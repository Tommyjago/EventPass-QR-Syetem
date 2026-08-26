# EventPass QR Check-In

[![Pages deploy status](https://github.com/Tommyjago/EventPass-QR-Syetem/actions/workflows/pages.yml/badge.svg)](https://github.com/Tommyjago/EventPass-QR-Syetem/actions/workflows/pages.yml)


Browser-based QR guest verification prototype for a 100-person event.

Includes:
- QR camera scanner
- Guest verification
- Name + photo display
- One-time check-in
- Guest QR generation/download
- Check-in dashboard
- 100-row CSV template

Guest data and check-ins are shared through Supabase. The publishable key is used by the browser; Row Level Security policies control the table access.

## Supabase setup

1. Open the Supabase project SQL Editor.
2. Run the SQL in `supabase-setup.sql`.
3. Publish this repository with GitHub Pages or another HTTPS host.
4. Use the normal site URL on the PC for guest administration.
5. Use the same URL with `?scanner=1` on each phone, for example `https://your-domain.example/?scanner=1`.

The phone URL hides the guest and dashboard tabs, loads the shared guest list, and syncs check-ins back to the PC. Camera access requires HTTPS or localhost.

The public GitHub Pages URL will be `https://tommyjago.github.io/EventPass-QR-Syetem/` after the first deployment.
