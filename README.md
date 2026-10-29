# william-groc.fr

Personal CV site: SvelteKit + Tailwind, prerendered to static HTML and served by nginx.

```sh
pnpm install
pnpm dev      # local dev server
pnpm build    # static output in build/
docker build -t william-groc.fr . && docker run -p 8080:80 william-groc.fr
```

The "years of experience" badge is computed at build time: rebuild at least once a year.
