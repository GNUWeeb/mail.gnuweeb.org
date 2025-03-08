<script lang="ts">
  import { Toaster } from "$components/ui/sonner";
  import "../app.css";

  let { children } = $props();
</script>

{@render children()}

<Toaster position="bottom-center" richColors />
