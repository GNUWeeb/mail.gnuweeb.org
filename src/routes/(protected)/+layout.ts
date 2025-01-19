import { useAuth } from "$lib/hooks/auth.svelte";
import { redirect } from "@sveltejs/kit";
import type { LayoutLoad } from "./$types";

export const load: LayoutLoad = async () => {
  const auth = useAuth();

  if (!auth.isValid()) return redirect(307, "/");

  auth.refresh();
};
