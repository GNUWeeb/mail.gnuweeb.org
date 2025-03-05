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

    set token(newValue) {
      data.token = newValue;
    },

    refresh() {
      const user = localStorage.getItem("gwm_uinfo");
      data.user_info = JSON.parse(user!) as User;
    },

    save({ user_info, token, token_exp_at }: LoginResponse) {
      data = { user_info, token, token_exp_at };
      localStorage.setItem("gwm_token", token || "null");
      localStorage.setItem("gwm_token_exp_at", token_exp_at!.toString() ?? "0");
      localStorage.setItem("gwm_uinfo", JSON.stringify(user_info));
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
