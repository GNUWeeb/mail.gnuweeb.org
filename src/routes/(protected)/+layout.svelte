<script>
  import * as Sidebar from "$lib/components/ui/sidebar";
  import AppSidebar from "$components/customs/app-sidebar.svelte";
  import Header from "$components/customs/header.svelte";
  import Separator from "$components/ui/separator/separator.svelte";

  let { children } = $props();
</script>

<Sidebar.Provider class="light">
  <AppSidebar />

  <Sidebar.Inset>
    <Header />
    <Separator />

    <main class="px-5 py-4">{@render children()}</main>
  </Sidebar.Inset>
</Sidebar.Provider>
