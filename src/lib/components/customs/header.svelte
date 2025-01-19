<script lang="ts">
  import * as Sidebar from "$lib/components/ui/sidebar";
  import * as Breadcrumb from "$lib/components/ui/breadcrumb";
  import { page } from "$app/state";
  import { navigations } from "$constants";
  import Separator from "$components/ui/separator/separator.svelte";

  const getRouteName = () => {
    const pathname = page.url.pathname;
    const found = navigations.find((path) => path.url === pathname);

    return found?.name ?? "";
  };
</script>

<header class="flex h-16 shrink-0 items-center gap-2">
  <div class="flex items-center gap-2 px-4">
    <Sidebar.Trigger />
    <Separator orientation="vertical" class="h-5" />
    <Breadcrumb.Root>
      <Breadcrumb.List>
        <Breadcrumb.Item>
          <Breadcrumb.Link href="/">G/W Mail</Breadcrumb.Link>
        </Breadcrumb.Item>
        <Breadcrumb.Separator />
        <Breadcrumb.Item class="select-none">
          <Breadcrumb.Page>{getRouteName()}</Breadcrumb.Page>
        </Breadcrumb.Item>
      </Breadcrumb.List>
    </Breadcrumb.Root>
  </div>
</header>
