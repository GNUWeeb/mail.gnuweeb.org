import type { PageLoad } from "./$types";
import { zod } from "sveltekit-superforms/adapters";
import { superValidate } from "sveltekit-superforms";
import { profileSchema } from "$lib/schemas/profile-schema";
import { useAuth } from "$lib/hooks/auth.svelte";
import * as typing from "$typings"
import http from "$lib/hooks/http.svelte";
import { redirect } from "@sveltejs/kit";

export const load: PageLoad = async () => {
  const auth = useAuth();

  const { status, data } = await http<{ user_info: typing.User }>({
    params: { action: "get_user_info" }
  });

  if (status !== 200) {
    localStorage.setItem("gwm_invalid_creds", String(1));
    auth.clear();
    return redirect(307, "/");
  }

  auth.save({
    token: data.res?.renew_token?.token,
    token_exp_at: data.res?.renew_token?.token_exp_at,
    user_info: data.res?.user_info
  });

  const initialData = {
    username: data.res?.user_info?.username,
    full_name: data.res?.user_info?.full_name,
    ext_email: data.res?.user_info?.ext_email,
    gender: data.res?.user_info?.gender,
    socials: data.res?.user_info?.socials
  };

  const form = await superValidate(initialData, zod(profileSchema));
  return { form };
};
