import type { PageLoad } from "./$types";
import { zod } from "sveltekit-superforms/adapters";
import { superValidate } from "sveltekit-superforms";
import { accountSchema } from "$lib/schemas/account-schema";

export const load: PageLoad = async () => {
  const form = await superValidate(zod(accountSchema));
  return { form };
};
