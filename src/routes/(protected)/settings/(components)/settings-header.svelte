<script lang="ts">
  import { page } from "$app/state";
  import { settingsNav } from "$constants/navigations";
  import Separator from "$components/ui/separator/separator.svelte";

  const activeNav = $derived(settingsNav.find((e) => page.url.pathname === e.url));
</script>

<div>
  <h3 class="font-medium">{activeNav?.name}</h3>
  <p class="text-sm text-muted-foreground">{activeNav?.description}</p>
</div>
<Separator />
