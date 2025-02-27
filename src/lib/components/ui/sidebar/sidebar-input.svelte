<script lang="ts">
  import { Input } from "$components/ui/input";
  import { cn } from "$utils";
  import type { ComponentProps } from "svelte";

  let {
    ref = $bindable(null),
    value = $bindable(""),
    class: className,
    ...restProps
  }: ComponentProps<typeof Input> = $props();
</script>

<Input
  bind:ref
  bind:value
  data-sidebar="input"
  class={cn(
    "focus-visible:ring-sidebar-ring h-8 w-full bg-background shadow-none focus-visible:ring-2",
    className
  )}
  {...restProps}
/>
