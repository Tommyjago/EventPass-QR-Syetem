# EventPass QR Check-In

[![Pages deploy status](https://github.com/<OWNER>/<REPO>/actions/workflows/pages.yml/badge.svg)](https://github.com/<OWNER>/<REPO>/actions/workflows/pages.yml)


Browser-based QR guest verification prototype for a 100-person event.

Includes:
- QR camera scanner
- Guest verification
- Name + photo display
- One-time check-in
- Guest QR generation/download
- Check-in dashboard
- 100-row CSV template

This prototype stores data in browser localStorage. For a real event using multiple entrance phones, connect the same UI to a shared backend such as Supabase or Firebase.

Open index.html through HTTPS or localhost so camera access works.

Replace `<OWNER>/<REPO>` in the badge URL above with your GitHub repository path (for example `youruser/EventPass-QR-System`).

To use a custom domain, create a file named `CNAME` in the repository root containing your domain (for example `event.example.com`). GitHub Pages will publish that domain when the site is deployed.
