<script lang="ts">
  import { navigations } from "$constants";
  import Separator from "$components/ui/separator/separator.svelte";
  import * as Sidebar from "$lib/components/ui/sidebar";
  import { useAuth } from "$lib/hooks/auth.svelte";
  import { LogOut, Mails, SquareArrowOutUpRight } from "lucide-svelte";
  import type { ComponentProps } from "svelte";
  import { goto } from "$app/navigation";
  import Button from "$components/ui/button/button.svelte";
  import { cn } from "$utils";
  import { page } from "$app/state";
  import { crossfade } from "svelte/transition";
  import { cubicInOut } from "svelte/easing";
  import IconRoundcube from "$components/icons/icon-roundcube.svelte";

  let { ref = $bindable(null), ...restProps }: ComponentProps<typeof Sidebar.Root> = $props();

  const auth = useAuth();
  const sidebar = Sidebar.useSidebar();

  const [send, receive] = crossfade({
    duration: 250,
    easing: cubicInOut
  });

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
              {@const isActive = page.url.pathname.startsWith(item.url)}
              <Sidebar.MenuButton {isActive} class="relative">
                {#snippet child({ props })}
                  {@const className = props.class as string}
                  <a
                    href={item.url}
                    onclick={handleNavigationMobile}
                    {...props}
                    class={cn("relative z-10", className)}
                  >
                    <item.icon />
                    <span>{item.name}</span>
                  </a>
                  {#if isActive}
                    <!-- svelte-ignore element_invalid_self_closing_tag -->
                    <div
                      class={cn(
                        "absolute inset-0 rounded-md bg-sidebar-accent",
                        isActive &&
                          "overflow-hidden before:absolute before:left-0 before:h-full before:w-0.5 before:bg-foreground"
                      )}
                      in:send={{ key: "active-sidebar-tab" }}
                      out:receive={{ key: "active-sidebar-tab" }}
                    />
                  {/if}
                {/snippet}
              </Sidebar.MenuButton>
            </Sidebar.MenuItem>
          {/each}
          <Sidebar.MenuItem>
            <Sidebar.MenuButton>
              {#snippet child({ props })}
                {@const className = props.class as string}
                <a
                  href="https://mail.gnuweeb.org/roundcube/"
                  {...props}
                  class={cn("group/roundcube", className)}
                  target="_blank"
                >
                  <IconRoundcube />
                  <span>Roundcube</span>
                  <SquareArrowOutUpRight
                    class="!size-3 transition-transform group-hover/roundcube:!scale-125"
                  />
                </a>
              {/snippet}
            </Sidebar.MenuButton>
          </Sidebar.MenuItem>
        </Sidebar.Menu>
      </Sidebar.GroupContent>
    </Sidebar.Group>
  </Sidebar.Content>
  <Sidebar.Footer>
    <Sidebar.Menu>
      <Button
        variant="destructive"
        onclick={handleLogout}
        class="flex w-full items-center justify-start"
      >
        <LogOut />
        <span>Logout</span>
      </Button>
    </Sidebar.Menu>
  </Sidebar.Footer>
</Sidebar.Root>
