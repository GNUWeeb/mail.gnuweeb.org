import { redirect } from "@sveltejs/kit";
import type { PageLoad } from "./$types";
import { getSettingsNav } from "$utils";

export const load: PageLoad = async () => {
  // get first page that are not disabled.
  const settingsNav = getSettingsNav();
  const firstPage = settingsNav.find((e) => !e.disabled);
  const url = firstPage?.items?.[0].url ?? firstPage?.url;

  // if it don't exist, redirect to index page.
  return redirect(307, url ?? "/settings/profile");
};
