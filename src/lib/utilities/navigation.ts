import { navigations } from "$constants";

export const getSettingsNav = () => {
  return navigations.find((nav) => nav.url.includes("/settings"))?.items ?? [];
};
