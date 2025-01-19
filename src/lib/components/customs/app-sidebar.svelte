<script lang="ts">
  import { navigations } from "$constants";
  import Separator from "$components/ui/separator/separator.svelte";
  import * as Sidebar from "$lib/components/ui/sidebar";
  import { useAuth } from "$lib/hooks/auth.svelte";
  import { LogOut, Mails } from "lucide-svelte";
  import type { ComponentProps } from "svelte";
  import { goto } from "$app/navigation";
    import Button from "$components/ui/button/button.svelte";

  let { ref = $bindable(null), ...restProps }: ComponentProps<typeof Sidebar.Root> = $props();

  const auth = useAuth();
  const sidebar = Sidebar.useSidebar();

  const handleNavigationMobile = () => {
    if (!sidebar.isMobile) return;
    sidebar.toggle();
  };

  const handleLogout = () => {
    auth.clear();
    goto("/");
  };
</script>

<Sidebar.Root bind:ref variant="inset" collapsible="icon" {...restProps}>
  <Sidebar.Content>
    <Sidebar.Group>
      <Sidebar.Header>
        <Sidebar.Menu>
          <Sidebar.MenuItem>
            <Sidebar.MenuButton onclick={() => sidebar.toggle()} size="lg">
              <div
                class="flex aspect-square size-8 items-center justify-center rounded-lg bg-sidebar-primary text-sidebar-primary-foreground"
              >
                <Mails class="size-4" />
              </div>
              <div class="grid flex-1 text-left text-sm leading-tight">
                <span class="truncate font-semibold">{auth.user?.full_name}</span>
                <span class="truncate text-xs">@{auth.user?.username}</span>
              </div>
            </Sidebar.MenuButton>
          </Sidebar.MenuItem>
        </Sidebar.Menu>
      </Sidebar.Header>
      <Separator class="mb-3" />
      <Sidebar.GroupContent>
        <Sidebar.Menu>
          {#each navigations as item (item.name)}
            <Sidebar.MenuItem>
              <Sidebar.MenuButton>
                {#snippet child({ props })}
                  <a href={item.url} onclick={handleNavigationMobile} {...props}>
                    <item.icon />
                    <span>{item.name}</span>
                  </a>
                {/snippet}
              </Sidebar.MenuButton>
            </Sidebar.MenuItem>
          {/each}
        </Sidebar.Menu>
      </Sidebar.GroupContent>
    </Sidebar.Group>
  </Sidebar.Content>
  <Sidebar.Footer>
    <Sidebar.Menu>
      <Button variant="destructive" onclick={handleLogout} class="flex justify-start items-center w-full">
        <LogOut />
        <span>Logout</span>
      </Button>
    </Sidebar.Menu>
  </Sidebar.Footer>
</Sidebar.Root>
