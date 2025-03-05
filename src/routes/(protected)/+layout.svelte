<script>
  import * as Sidebar from "$lib/components/ui/sidebar";
  import AppSidebar from "$components/customs/app-sidebar.svelte";
  import Header from "$components/customs/header.svelte";
  import Separator from "$components/ui/separator/separator.svelte";
  import Seo from "$components/customs/seo.svelte";
  import { useAuth } from "$lib/hooks/auth.svelte";

  let { children } = $props();

  const auth = useAuth();
</script>

{#if auth.user && auth.token}
  <Seo
    title="{auth.user?.full_name} ({auth.user?.username}) - GNU/Weeb Mail"
    description="Configure your email client using this config"
    image={auth.user?.photo}
  />
{/if}

<Sidebar.Provider class="light">
  <AppSidebar />

  <Sidebar.Inset>
    <Header />
    <Separator />

    <main class="px-5 py-4">{@render children()}</main>
  </Sidebar.Inset>
</Sidebar.Provider>
