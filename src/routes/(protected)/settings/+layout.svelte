<script lang="ts">
  import { Separator } from "$lib/components/ui/separator";

  import { settingsNav } from "$constants/navigations";
  import SettingsNavigation from "./(components)/settings-nav.svelte";
  import SettingsHeader from "./(components)/settings-header.svelte";

  let { children } = $props();
</script>

<div class="space-y-6 pb-16 prose-h2:text-2xl prose-h3:text-lg">
  <div class="space-y-0.5">
    <h2 class="font-bold tracking-tight">Settings</h2>
    <p class="text-muted-foreground">Manage your account settings and set e-mail preferences.</p>
  </div>
  <Separator class="my-6" />
  <div class="flex flex-col space-y-8 xl:flex-row xl:space-x-8 xl:space-y-0">
    <aside class="xl:w-[12%]">
      <SettingsNavigation items={settingsNav} />
    </aside>
    <div class="flex-1">
      <div class="space-y-6">
        <SettingsHeader />
        {@render children()}
      </div>
    </div>
  </div>
</div>
