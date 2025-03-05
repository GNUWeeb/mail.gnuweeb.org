<script lang="ts">
  interface Props {
    title: string;
    description: string;
    image?: string;
  }

  let { title, description, image }: Props = $props();

  const META_IMG = image ?? "/favicon.ico";
</script>

<svelte:head>
  <title>{title}</title>
  <meta name="description" content={description} />
  <meta property="og:type" content="website" />
  <meta property="og:title" content={title} />
  <meta property="og:description" content={description} />
  <meta property="og:image" content={META_IMG} />
  <meta property="og:image:alt" content={META_IMG} />
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:title" content={title} />
  <meta name="twitter:description" content={description} />
  <meta name="twitter:image" content={META_IMG} />
  <meta name="twitter:image:alt" content={META_IMG} />
  <meta name="robots" content="index, follow" />
</svelte:head>
