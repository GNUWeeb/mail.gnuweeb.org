import type { LoginResponse, User } from "$typings";

let data = $state<LoginResponse>({
  token: "",
  token_exp_at: 0
});

export function useAuth() {
  return {
    get token() {
      return data.token;
    },

    get exp() {
      return data.token_exp_at;
    },

    get user() {
      return data.user_info;
    },

    set token(newValue: string) {
      data.token = newValue;
    },

    refresh() {
      const user = localStorage.getItem("gwm_uinfo");
      data.user_info = JSON.parse(user!) as User;
    },

    save(newData: LoginResponse) {
      data = newData;
      localStorage.setItem("gwm_token", newData.token);
      localStorage.setItem("gwm_token_exp_at", newData.token_exp_at.toString());
      localStorage.setItem("gwm_uinfo", JSON.stringify(newData.user_info));
    },

    clear() {
      localStorage.removeItem("gwm_token");
      localStorage.removeItem("gwm_token_exp_at");
      localStorage.removeItem("gwm_uinfo");
    },

    isValid() {
      const token = localStorage.getItem("gwm_token");
      const user = localStorage.getItem("gwm_uinfo");

      if (!token || !user) {
        this.clear();
        return false;
      }

      const exp = Number(localStorage.getItem("gwm_token_exp_at"));
      const unix = Math.round(new Date().getTime() / 1000);

      if (unix >= exp) {
        this.clear();
        return false;
      }

      return true;
    }
  };
}
