import * as typing from "$typings";
import Home from "lucide-svelte/icons/home";
import Settings from "lucide-svelte/icons/settings";

export const navigations: typing.Navigations[] = [
  {
    name: "Home",
    icon: Home,
    url: "/home"
  },
  {
    name: "Settings",
    icon: Settings,
    url: "/settings/profile",
    items: [
      {
        name: "Profile",
        description: "Manage your profile.",
        url: "/settings/profile"
      },
      {
        name: "Account",
        description: "Manage your account credentials.",
        url: "/settings/account"
      }
    ]
  }
] as const;
