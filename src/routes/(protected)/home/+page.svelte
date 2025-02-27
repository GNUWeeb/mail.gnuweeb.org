<script lang="ts">
  import Button from "$components/ui/button/button.svelte";
  import * as Card from "$components/ui/card";
  import Separator from "$components/ui/separator/separator.svelte";
  import { mailConfig } from "$constants";
  import { toast } from "svelte-sonner";
  import { copyText } from "svelte-copy";

  const copy = async (text: string) => {
    try {
      await copyText(text);
      toast.info(`${text} has been copied to clipboard!`);
    } catch (e) {
      const msg = e instanceof Error ? e.message : String(e);
      const error = new Error(msg, { cause: e });
      toast.error(error.message);
    }
  };
</script>

<div class="flex h-full w-full justify-center">
  <Card.Root>
    <Card.Header class="py-5">
      <Card.Title>Mail Client Config</Card.Title>
      <Card.Description>Configure your email client using this config</Card.Description>
    </Card.Header>

    <Separator />

    <Card.Content>
      <div class="font-mono">
        <div class="space-y-5">
          <div>
            <div class="select-none">[Incoming]</div>
            {#each mailConfig.incoming as conf}
              <div class="flex items-center">
                <div class="w-1/3 text-left">{conf.label}</div>
                <div class="w-4 select-none">:</div>
                <Button
                  onclick={() => copy(conf.value)}
                  variant="ghost"
                  class="inline h-fit w-7/12 py-px text-left"
                >
                  {conf.value}
                </Button>
              </div>
            {/each}
          </div>

          <div>
            <div class="select-none">[Outgoing]</div>
            {#each mailConfig.outgoing as conf}
              <div class="flex items-center">
                <div class="w-1/3 text-left">{conf.label}</div>
                <div class="w-4 select-none">:</div>
                <Button
                  onclick={() => copy(conf.value)}
                  variant="ghost"
                  class="inline h-fit w-7/12 py-px text-left"
                >
                  {conf.value}
                </Button>
              </div>
            {/each}
          </div>
        </div>
      </div>
    </Card.Content>
  </Card.Root>
</div>
