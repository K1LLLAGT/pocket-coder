import { defineConfig } from "vite";

// Standalone build config for the pocket-coder.ai marketing site.
// This project is intentionally decoupled from the Cordova app's
// rspack/webpack build (see ../rspack.config.js) since it ships as a
// separate static site rather than as part of the mobile app bundle.
export default defineConfig({
  base: "/",
  build: {
    outDir: "dist",
    emptyOutDir: true,
    rollupOptions: {
      // Multi-page build: every top-level HTML page needs its own entry
      // point so Vite bundles and copies it into dist/.
      input: {
        main: `${import.meta.dirname}/index.html`,
        privacy: `${import.meta.dirname}/privacy.html`,
        notFound: `${import.meta.dirname}/404.html`,
      },
    },
  },
  server: {
    port: 4173,
  },
});
