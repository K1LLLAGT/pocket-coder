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
  },
  server: {
    port: 4173,
  },
});
