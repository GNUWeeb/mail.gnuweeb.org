<script lang="ts">
  import type { WithElementRef } from "bits-ui";
  import type { HTMLInputAttributes } from "svelte/elements";
  import Input from "./input.svelte";
  import Button from "$components/ui/button/button.svelte";
  import { EyeIcon, EyeOffIcon } from "lucide-svelte";

  let {
    ref = $bindable(null),
    value = $bindable(),
    ...restProps
  }: WithElementRef<HTMLInputAttributes> = $props();

  let showPassword = $state<boolean>(false);
  let btnDisabled = $derived(value === "" || value === undefined);
</script>

<div class="relative">
  <Input {ref} type={showPassword ? "text" : "password"} bind:value {...restProps} />
  <Button
    type="button"
    variant="ghost"
    size="sm"
    class="group absolute right-0 top-0 h-full !px-2 transition duration-200 hover:bg-transparent"
    onclick={() => (showPassword = !showPassword)}
    disabled={btnDisabled}
  >
    {#if showPassword}
      <EyeIcon class="h-4 w-4" aria-hidden="true" />
    {:else}
      <EyeOffIcon class="h-4 w-4" aria-hidden="true" />
    {/if}
    <span class="sr-only">{showPassword ? "Hide password" : "Show password"}</span>
  </Button>
</div>

<style lang="css">
  :global(input[type="password"]::-ms-reveal),
  :global(input[type="password"]::-ms-clear),
  :global(input[type="text"]::-ms-reveal),
  :global(input[type="text"]::-ms-clear) {
    visibility: hidden;
    pointer-events: none;
    display: none;
  }
</style>
