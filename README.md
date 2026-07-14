# LoadTec Slidev

Self-hosted Slidev presentation deployed to Cloudflare Pages at `slidev.loadingtechnology.app`.

## Quick start (local dev)

```bash
npm install
npm run dev
```

Open `http://localhost:3030`.

## Build

```bash
npm run build
```

Output goes to `dist/` - this is what Cloudflare Pages serves.

## Deploy

Cloudflare Pages connects to GitHub directly - **no API tokens or GitHub secrets needed**.

Settings in Cloudflare Pages dashboard:

- Build command: `npm run build`
- Build output directory: `dist`
- Production branch: `main`
- Root directory: (leave blank)

Custom domain: `slidev.loadingtechnology.app` (auto-CNAME since domain is on Cloudflare).

GitHub repo: `github.com/loadingcloud001/loadtec-slidev`

## Update workflow

1. Edit `slides.md` (via Hermes Agent or any editor).
2. `git add slides.md`
3. `git commit -m "update deck"`
4. `git push origin main`
5. Cloudflare Pages redeploys in ~30 seconds.

## References

- Slidev: https://sli.dev
- Cloudflare Pages: https://developers.cloudflare.com/pages
