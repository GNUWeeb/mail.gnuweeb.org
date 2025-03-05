import { useAuth } from "$lib/hooks/auth.svelte";
import { redirect } from "@sveltejs/kit";
import type { LayoutLoad } from "../$types";
import http from "$lib/hooks/http.svelte";
import * as typing from "$typings";

export const load: LayoutLoad = async () => {
  const auth = useAuth();

  if (!auth.isValid()) {
    localStorage.setItem("gwm_invalid_creds", String(1));
    return redirect(307, "/");
  }

  const { data } = await http<{ user_info: typing.User }>({
    params: { action: "get_user_info" }
  });

  auth.save({
    token: data.res?.renew_token?.token,
    token_exp_at: data.res?.renew_token?.token_exp_at,
    user_info: data.res?.user_info
  });
};
