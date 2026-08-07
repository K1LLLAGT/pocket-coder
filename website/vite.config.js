import { defineConfig } from "vite";
import path from "node:path";
import { fileURLToPath } from "node:url";

const rootDir = path.dirname(fileURLToPath(import.meta.url));

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
        main: path.resolve(rootDir, "index.html"),
        privacy: path.resolve(rootDir, "privacy.html"),
        notFound: path.resolve(rootDir, "404.html"),
      },
    },
  },
  server: {
    port: 4173,
  },
});
