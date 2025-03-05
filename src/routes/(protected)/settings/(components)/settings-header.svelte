<script lang="ts">
  import { page } from "$app/state";
  import Separator from "$components/ui/separator/separator.svelte";
  import { getSettingsNav } from "$utils";

  const settingsNav = getSettingsNav();
  const activeNav = $derived(settingsNav.find((e) => page.url.pathname === e.url));
</script>

<div>
  <h3 class="font-medium">{activeNav?.name}</h3>
  <p class="text-sm text-muted-foreground">{activeNav?.description}</p>
</div>
<Separator />
