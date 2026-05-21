# PAL Schedule Composer

Hosted browser-based composer for Pop-A-Lock of Northern NJ's intra-shift
schedule changes.  Used by the on-shift navigator to compose and send the
morning/night roadside schedule email and mid-shift availability updates.

## Usage

Bookmark the deployed URL.  Open it at the start of each shift.  Fill in
the form; click **Open in Gmail** to compose the broadcast email.

The roster (canonical tech names + roles + aliases) is fetched from a
published Google Sheet — paste the CSV URL in the **Settings** tab once,
it's saved in your browser's localStorage from then on.

## Deploying

This repo is intended to be served from GitHub Pages.

1. Create a public repo `pal-schedule-composer` under your GitHub account.
2. Push this folder's contents to `main`.
3. In the repo's **Settings → Pages**, set source to `Deploy from a branch`,
   branch `main`, folder `/ (root)`.
4. Pages will publish to `https://<your-username>.github.io/pal-schedule-composer/`.
5. Distribute that URL to navigators.

## Architecture

V2 of the Composer was forked from the local-launcher version
(`Schedule Composer V1.4.html` in the AI Navigator repo) and stripped of
its Python-launcher dependencies.  Email output is byte-identical to V1.4
for the same form input — that's the regression bar.

Planned subsequent steps (see the AI Navigator repo's
`SPRINT_composer_pwa.md`):

- Service worker + manifest for offline app-shell load
- Roster localStorage cache with offline fallback
- Outbox for emails composed offline

## Files

- `index.html` — the Composer (Step 1 complete)
- `sw.js` — service worker (Step 3, pending)
- `manifest.webmanifest` — PWA manifest (Step 3, pending)
- `icons/` — PWA icons (Step 3, pending)
