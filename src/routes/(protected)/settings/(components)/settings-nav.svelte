<script lang="ts">
  import { cubicInOut } from "svelte/easing";
  import { crossfade } from "svelte/transition";
  import { cn } from "$utils";
  import { page } from "$app/state";
  import type { HTMLAttributes } from "svelte/elements";
  import Button from "$components/ui/button/button.svelte";
  import * as typing from "$typings";

  interface Props extends HTMLAttributes<HTMLDivElement> {
    items: typing.Navigations[];
  }

  let { items, class: className }: Props = $props();

  const [send, receive] = crossfade({
    duration: 250,
    easing: cubicInOut
  });
</script>

<nav class={cn("flex space-x-2 xl:flex-col xl:space-x-0 xl:space-y-1", className)}>
  {#each items as item}
    {@const isActive = page.url.pathname === item.url}
    <Button
      href={item.url}
      variant="ghost"
      class={cn(!isActive && "hover:underline", "relative justify-start hover:bg-transparent")}
      disabled={item.disabled}
      data-sveltekit-noscroll
    >
      {#if isActive}
        <!-- svelte-ignore element_invalid_self_closing_tag -->
        <div
          class="absolute inset-0 rounded-md bg-muted"
          in:send={{ key: "active-sidebar-tab" }}
          out:receive={{ key: "active-sidebar-tab" }}
        />
      {/if}
      <div class="relative">
        {item.name}
      </div>
    </Button>
  {/each}
</nav>
