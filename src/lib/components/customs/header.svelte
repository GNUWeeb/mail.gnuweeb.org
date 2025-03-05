<script lang="ts">
  import * as Sidebar from "$lib/components/ui/sidebar";
  import * as Breadcrumb from "$lib/components/ui/breadcrumb";
  import { page } from "$app/state";
  import { navigations } from "$constants";
  import Separator from "$components/ui/separator/separator.svelte";
  import * as typing from "$typings";

  const getParentRoute = (
    path: string,
    items: typing.Navigations[],
    routePath: typing.Navigations[] = []
  ): typing.Navigations[] => {
    for (const item of items) {
      if (path === item.url) {
        return [...routePath, item];
      }

      if (item.items) {
        const foundPath = getParentRoute(path, item.items, [...routePath, item]);
        if (foundPath.length) return foundPath;
      }
    }
    return [];
  };

  const getRouteName = () => {
    return getParentRoute(page.url.pathname, navigations);
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
        {#each getRouteName() as route, index (route.url)}
          {#if index === getRouteName().length - 1}
            <Breadcrumb.Item class="select-none">
              <Breadcrumb.Page>{route.name}</Breadcrumb.Page>
            </Breadcrumb.Item>
          {:else}
            <Breadcrumb.Item class="hidden md:block">
              <Breadcrumb.Link href={route.url}>{route.name}</Breadcrumb.Link>
            </Breadcrumb.Item>
            <Breadcrumb.Separator />
          {/if}
        {/each}
      </Breadcrumb.List>
    </Breadcrumb.Root>
  </div>
</header>
