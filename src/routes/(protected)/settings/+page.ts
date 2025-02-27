import { redirect } from "@sveltejs/kit";
import type { PageLoad } from "./$types";
import { settingsNav } from "$constants/navigations";

export const load: PageLoad = async () => {
  // get first page that are not disabled.
  const firstPage = settingsNav.find((e) => !e.disabled);

  // if it don't exist, redirect to index page.
  return redirect(307, firstPage?.url ?? "/");
};
