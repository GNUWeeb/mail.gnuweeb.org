import type { LoginResponse, User } from "$typings";

let data = $state<LoginResponse>({
  token: "",
  token_exp_at: 0
});

const getUserFromLocalStorage = () => {
  const user = localStorage.getItem("gwm_uinfo");
  if (!user) return undefined;

  try {
    return JSON.parse(user) as User;
  } catch {
    return undefined;
  }
};

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
      const token = localStorage.getItem("gwm_token");
      const token_exp_at = Number(localStorage.getItem("gwm_token_exp_at"));

      data.user_info = getUserFromLocalStorage();
      data.token = token!;
      data.token_exp_at = token_exp_at;
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
      const user = getUserFromLocalStorage();
      const token = localStorage.getItem("gwm_token");
      const expLs = localStorage.getItem("gwm_token_exp_at");

      if (!token || !user || !expLs) {
        this.clear();
        return false;
      }

      const exp = Number(expLs);
      const unix = Math.round(new Date().getTime() / 1000);

      if (unix >= exp) {
        this.clear();
        return false;
      }

      return true;
    }
  };
}
