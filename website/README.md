# pocket-coder.ai — marketing website

This is a standalone scaffold for the **pocket-coder.ai** marketing/landing
site. It is intentionally separate from the main PocketCoder app (the
Cordova/Android editor built from the repo root) so it can be developed,
built, and deployed independently — e.g. as a static site on Netlify,
Vercel, GitHub Pages, or Cloudflare Pages.

All content here is original (copy, layout, and styling) and reuses this
repo's own README/ROADMAP text and logo — it is not a copy of any
third-party site.

## Stack

- Plain HTML + vanilla JS + SCSS — no framework, matching the rest of this
  repository's lightweight, dependency-light approach.
- [Vite](https://vitejs.dev/) for the dev server and static build, since it
  requires no extra configuration for a simple marketing page.

## Getting started

```sh
cd website
npm install
npm run dev      # start a local dev server with hot reload
npm run build    # build the static site into website/dist
npm run preview  # preview the production build locally
```

## Deploying

`npm run build` outputs a fully static site in `website/dist`. Point your
static host (Netlify, Vercel, GitHub Pages, Cloudflare Pages, etc.) at this
`website` directory with:

- Build command: `npm run build`
- Output directory: `dist`

Then attach the `pocket-coder.ai` domain to that deployment.

## Structure

```
website/
├── index.html       # landing page markup
├── public/          # static assets served as-is (logo, favicon)
├── src/
│   ├── main.js       # small interactive behaviors (year stamp, smooth scroll)
│   └── style.scss    # site styles
└── vite.config.js
```

## Updating content

Feature and roadmap copy is sourced from the repository's
[README.md](../README.md) and [ROADMAP.md](../ROADMAP.md). Keep this page
in sync when those documents change.
