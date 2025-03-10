import type { PageLoad } from "./$types";
import { zod } from "sveltekit-superforms/adapters";
import { superValidate } from "sveltekit-superforms";
import { profileSchema } from "$lib/schemas/profile-schema";
import { useAuth } from "$lib/hooks/auth.svelte";

export const load: PageLoad = async () => {
  const auth = useAuth();
  auth.refresh();

  const data = {
    username: auth.user?.username,
    full_name: auth.user?.full_name,
    ext_email: auth.user?.ext_email,
    gender: auth.user?.gender,
    socials: auth.user?.socials
  };

  const form = await superValidate(data, zod(profileSchema));
  return { form };
};
