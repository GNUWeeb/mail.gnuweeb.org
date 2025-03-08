<script lang="ts">
  import { navigations } from "$constants";
  import Separator from "$components/ui/separator/separator.svelte";
  import * as Sidebar from "$lib/components/ui/sidebar";
  import * as Avatar from "$lib/components/ui/avatar";
  import * as DropdownMenu from "$lib/components/ui/dropdown-menu";
  import * as Dialog from "$lib/components/ui/dialog";
  import { useAuth } from "$lib/hooks/auth.svelte";
  import LogOut from "lucide-svelte/icons/log-out";
  import Mails from "lucide-svelte/icons/mails";
  import SquareArrowOutUpRight from "lucide-svelte/icons/square-arrow-out-up-right";
  import type { ComponentProps } from "svelte";
  import { goto } from "$app/navigation";
  import Button from "$components/ui/button/button.svelte";
  import { cn } from "$utils";
  import { page } from "$app/state";
  import { crossfade } from "svelte/transition";
  import { cubicInOut } from "svelte/easing";
  import IconRoundcube from "$components/icons/icon-roundcube.svelte";
  import Loading from "./loading.svelte";
  import ChevronsUpDown from "lucide-svelte/icons/chevrons-up-down";

  let { ref = $bindable(null), ...restProps }: ComponentProps<typeof Sidebar.Root> = $props();

  const auth = useAuth();
  const sidebar = Sidebar.useSidebar();

  let showModalConfirmation = $state(false);

  const [send, receive] = crossfade({
    duration: 250,
    easing: cubicInOut
  });

  const getShortName = () => {
    const fullName = auth.user?.full_name ?? "";
    const match = fullName.match(/\b(\w)/g) ?? [];
    return match.slice(0, 2).join("").toUpperCase();
  };

  const handleNavigationMobile = () => {
    if (!sidebar.isMobile) return;
    sidebar.toggle();
  };

  const handleLogout = () => {
    auth.clear();
    goto("/");
  };
</script>

<Dialog.Root open={showModalConfirmation} onOpenChange={(e) => (showModalConfirmation = e)}>
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
                <h2 class="shrink-0 text-lg font-semibold">G/W Mail</h2>
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
        <Sidebar.MenuItem>
          <DropdownMenu.Root>
            <DropdownMenu.Trigger>
              {#snippet child({ props })}
                <Sidebar.MenuButton
                  size="lg"
                  class="data-[state=open]:bg-sidebar-accent data-[state=open]:text-sidebar-accent-foreground"
                  {...props}
                >
                  <Avatar.Root class="h-8 w-8 rounded-lg">
                    <Avatar.Image src={auth.user?.photo} alt="{auth.user?.username}@gnuweeb.org" />
                    <Avatar.Fallback class="rounded-lg text-xs">
                      {#if !Boolean(auth.user?.photo)}
                        {getShortName()}
                      {:else}
                        <Loading class="size-3 text-black" />
                      {/if}
                    </Avatar.Fallback>
                  </Avatar.Root>
                  <div class="grid flex-1 text-left text-sm leading-tight">
                    <span class="truncate font-semibold">{auth.user?.full_name}</span>
                    <span class="truncate text-xs">{auth.user?.username}@gnuweeb.org</span>
                  </div>
                  <ChevronsUpDown class="ml-auto size-4" />
                </Sidebar.MenuButton>
              {/snippet}
            </DropdownMenu.Trigger>
            <DropdownMenu.Content
              class="w-[var(--bits-dropdown-menu-anchor-width)] min-w-56 rounded-lg"
              side={sidebar.isMobile ? "bottom" : "right"}
              align="end"
              sideOffset={4}
            >
              <DropdownMenu.Label class="p-0 font-normal">
                <div class="flex items-center gap-2 px-1 py-1.5 text-left text-sm">
                  <Avatar.Root class="h-8 w-8 rounded-lg">
                    <Avatar.Image src={auth.user?.photo} alt="{auth.user?.username}@gnuweeb.org" />
                    <Avatar.Fallback class="rounded-lg text-xs">
                      {#if !Boolean(auth.user?.photo)}
                        {getShortName()}
                      {:else}
                        <Loading class="size-3 text-black" />
                      {/if}
                    </Avatar.Fallback>
                  </Avatar.Root>
                  <div class="grid flex-1 text-left text-sm leading-tight">
                    <span class="truncate font-semibold">{auth.user?.full_name}</span>
                    <span class="truncate text-xs">{auth.user?.username}@gnuweeb.org</span>
                  </div>
                </div>
              </DropdownMenu.Label>
              <DropdownMenu.Separator />
              <DropdownMenu.Item
                onclick={() => (showModalConfirmation = true)}
                class="text-destructive hover:!text-destructive"
              >
                <LogOut />
                Log out
              </DropdownMenu.Item>
            </DropdownMenu.Content>
          </DropdownMenu.Root>
        </Sidebar.MenuItem>
      </Sidebar.Menu>
    </Sidebar.Footer>
  </Sidebar.Root>
  <Dialog.Content class="sm:max-w-[425px]">
    <Dialog.Header>
      <Dialog.Title>Logout Confirmation</Dialog.Title>
      <Dialog.Description>Confirm logout from your profile.</Dialog.Description>
    </Dialog.Header>
    <p class="text-sm font-medium">
      You are about to logout from your profile, click logout button below to proceed.
    </p>
    <Dialog.Footer>
      <Button type="submit" variant="destructive" onclick={handleLogout}>Logout</Button>
    </Dialog.Footer>
  </Dialog.Content>
</Dialog.Root>
