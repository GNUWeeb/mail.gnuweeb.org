import { loginSchema } from "$lib/schemas/login-schema";
import { superValidate } from "sveltekit-superforms";
import { zod } from "sveltekit-superforms/adapters";
import type { PageLoad } from "./$types";
import { useAuth } from "$lib/hooks/auth.svelte";
import { redirect } from "@sveltejs/kit";

export const load: PageLoad = async () => {
  const auth = useAuth();
  const isInvalidCreds = localStorage.getItem("gwm_invalid_creds");

  if (auth.isValid()) return redirect(307, "/home");

  auth.refresh();

  const form = await superValidate(zod(loginSchema));
  return { form, isInvalidCreds };
};
