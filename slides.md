---
theme: default
title: LoadTec Slidev Kickoff
info: |
  LoadTec Slidev Kickoff - first deck via Slidev + Cloudflare Pages
  Edit this file from Hermes Agent to update your deck.
class: text-center
drawings:
  persist: false
transition: slide-left
mdc: true
---

# LoadTec Slidev Kickoff

Self-hosted presentations on Cloudflare Pages.

Edit `slides.md`, push to GitHub, Cloudflare auto-builds.

<div class="pt-12">
  <span @click="$slidev.nav.next" class="px-2 py-1 rounded cursor-pointer" hover="bg-white bg-opacity-10">
    Press Space for next page
  </span>
</div>

<!--
Welcome notes - this only appears in presenter mode.
-->

---
layout: default
---

# Agenda

1. Why Slidev
2. Architecture
3. Minimal deploy flow
4. Update workflow
5. Next steps

<!--
Quick walkthrough of what we will cover.
-->

---
layout: default
---

# Why Slidev

- Pure Markdown - git-friendly, AI-friendly
- Vue-powered - embed any web component
- Code highlighting - 100+ languages out of the box
- One-command export to PDF
- Open source, free, self-hostable

---
layout: default
---

# Architecture

```
Markdown slides  ->  Slidev build  ->  dist/ static site
                                              |
                                              v
                                   Cloudflare Pages
                                              |
                                              v
                          slidev.loadingtechnology.app
```

- Source: GitHub repo `loadingcloud001/loadtec-slidev`
- Build: Cloudflare Pages auto-builds on push to main
- Host: Cloudflare Pages (global CDN, free)
- Custom domain: `slidev.loadingtechnology.app`

---
layout: default
---

# Minimal Deploy Flow

```
Developer (Hermes Agent)        GitHub         Cloudflare Pages
        |                          |                   |
        |-- git push origin main ->|                   |
        |                          |-- webhook ------->|
        |                          |                   |-- npm ci
        |                          |                   |-- npm run build
        |                          |                   |-- serve dist/
        |                          |<-- live URL ------|
        |<-- https://slidev.loadingtechnology.app -----|
```

Steps:
1. Edit `slides.md` (locally or via Hermes Agent prompt)
2. `git add . && git commit -m "..."`
3. `git push origin main`
4. Cloudflare Pages auto-rebuilds in ~30 seconds

---
layout: center
class: text-center
---

# Next Steps

- Replace this sample deck with your Cameras project overview
- Add custom theme or branding
- Configure `slidev.loadingtechnology.app` custom domain

Documentation:
- https://sli.dev
- https://developers.cloudflare.com/pages
