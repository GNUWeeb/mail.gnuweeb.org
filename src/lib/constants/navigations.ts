import * as typing from "$typings";
import { Home, Settings } from "lucide-svelte";

export const navigations: typing.Navigations[] = [
  {
    name: "Home",
    icon: Home,
    url: "/home"
  },
  {
    name: "Settings",
    icon: Settings,
    url: "/settings"
  }
] as const;

export const settingsNav: typing.Navigations[] = [
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
];
