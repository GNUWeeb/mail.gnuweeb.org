import adapter from "@sveltejs/adapter-static";
import { vitePreprocess } from "@sveltejs/vite-plugin-svelte";

/** @type {import('@sveltejs/kit').Config} */
const config = {
  preprocess: vitePreprocess(),
  kit: {
    paths: { relative: false },
    adapter: adapter({
      pages: "dist",
      assets: "dist",
      precompress: false,
      strict: true
    }),
    alias: {
      $components: "src/lib/components",
      $stores: "src/lib/stores",
      $constants: "src/lib/constants",
      $utils: "src/lib/utilities",
      $typings: "src/lib/typings"
    }
  }
};

export default config;
