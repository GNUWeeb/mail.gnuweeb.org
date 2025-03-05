<h1 align="center">
  GNU/Weeb Mail
</h1>

<h2 id="table-of-contents">
  Table of Contents
</h2>

- [Requirements](#requirements)
- [How to Run](#how-to-run)
- [How to Build](#how-to-build)
- [Code Standards](#code-standards)
- [How to Develop or Contribute](#how-to-develop)
- [API examples](#api-examples)

<h2 id="requirements">
  Requirements
</h2>

- **NodeJS** version 18+,strongly recommended to use version 20+ as this project developed using **NodeJS** version 20+
  [Download](https://nodejs.org/en/download)
- **TypeScript** version 5, no need to download in your OS as this project will install the TypeScript only inside this project.
- Code Editor, of course, we recommend using your favorite IDE, for example, [VS Code](https://code.visualstudio.com/download).
- Svelte 5 Runes knowledge.

<h2 id="how-to-run">
  How to Run
</h2>

```sh
# install all dependencies before running this project
npm i
npm run dev
```

<h2 id="how-to-build">
  How to Build
</h2>

```sh
# install all dependencies before building this project
npm i
npm run build
```

After build, the `dist` folder will be created, copy them to your own server, for example, [nginx](https://nginx.org/en/download.html).

<h2 id="code-standards">
Code Standards
</h2>

We use `LF` for each End of Line style and add empty newline for every End of File, you must setting all that in your IDE before contributing on this project.

<h2 id="how-to-develop">
How to Develop or Contribute
</h2>

<h3>Framework</h3>

If you are new to **SvelteKit** using the **Svelte 5 Runes**, we recommend to learn the framework first, you can learn it [here](https://learn.svelte.dev) or just [read the docs](https://svelte.dev/docs/kit/introduction).

<h3>Base Components</h3>

We used [**shadcn-svelte**](https://www.shadcn-svelte.com/) for the base components, we strongly recommended to use it for now, if you want to add components, just go [here](https://www.shadcn-svelte.com/docs/components/accordion).
This is how you add **shadcn-svelte** component

```sh
npx shadcn-svelte@latest add <component-name>
```

After installed **shadcn-svelte** component, it will generated in [$lib/components/ui](./src/lib/components/ui/), if you want to have a small edit.

<h3>Custom Components</h3>

If you want to create your own custom components you can create it in [$lib/components/customs](./src/lib/components/customs/).

<h3>Static Files</h3>

All static files were stored in [./static/](./static/).

<h3>Page Routes</h3>

All pages are created in [./src/routes](./src/routes/) and all protected routes (login required) are created in [./src/routes/(protected)](<./src/routes/(protected)/>).

<h3>Hooks Functions</h3>

All hooks are created in [$lib/hooks](./src/lib/hooks/).

<h3>Form Schemas</h3>

All form schemas are created in [$lib/schemas](./src/lib/schemas/).

<h3>Constants</h3>

All constants data are created in [$constants](./src/lib/constants/).

<h3>Typings</h3>

All types are created in [$typings](./src/lib/typings/).

<h3>Utilities</h3>

All util or helper functions are created in [$utils](./src/lib/utilities/).

<h3>Styling</h3>

If you want to create styles or CSS that only affects inside its page or component just write it inside that file,
if you want to create styles or CSS that affects globally you can write it in [./src/app.css](./src/app.css).

<h3>Aliases</h3>

You may add some import aliases, you can edit it in [svelte.config.js](./svelte.config.js), we used `$` as import alias, you must follow our standards to remain consistency.

<h2 id="api-examples">
API Examples
</h2>

You can view all API examples in our Postman workspace [here](https://gnuweeb.postman.co/workspace/GNU%252FWeeb~2805fbdd-376b-42de-8fe1-2a4cfa22ed3c/overview?ctx=updates).
