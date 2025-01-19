import containerQueries from "@tailwindcss/container-queries";
import forms from "@tailwindcss/forms";
import typography from "@tailwindcss/typography";
import type { Config } from "tailwindcss";
import defaultTheme from "tailwindcss/defaultTheme";

export default {
  content: ["./src/**/*.{html,js,svelte,ts}"],

  theme: {
    extend: {
      fontFamily: {
        inter: ["Inter", "Rubik", "Geist", ...defaultTheme.fontFamily.sans],
        rubik: ["Rubik", "Inter", "Geist", ...defaultTheme.fontFamily.sans],
        geist: ["Geist", "Inter", "Rubik", ...defaultTheme.fontFamily.sans]
      }
    }
  },

  plugins: [typography, forms, containerQueries]
} satisfies Config;
