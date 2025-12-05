# SRWebsite Deployment TODO

## Pre-Deployment Tasks

- [x] Update copyright year to dynamic (JavaScript)
- [ ] Update social links in footer (currently placeholder `#`) — SKIPPED per user preference
- [x] Add Privacy Policy, Terms of Service, Disclaimer pages
- [x] Update footer links to point to legal pages

## Git & Vercel Deployment

- [x] Initialize Git repository
- [x] Create `.gitignore` file
- [x] Make initial commit
- [x] Push to GitHub: https://github.com/ketankshukla/SRWebsite
- [x] Connect repository to Vercel
- [x] Deploy to Vercel: https://sr-website-seven.vercel.app/
- [x] Update form redirect URL to custom domain

## Clean URLs & Configuration

- [x] Add `vercel.json` with `cleanUrls: true` and `trailingSlash: false`
- [x] Update `thank-you.html` links from `index.html` to `/`
- [x] Add JavaScript URL cleaning fallback for GreenGeeks proxy issue

## Custom Domain Setup (surplusrecoveries.com)

- [x] Add domain to Vercel dashboard
- [x] Configure A record in GreenGeeks Zone Editor (`216.198.79.1`)
- [x] Configure CNAME for www (`550bdf806002b399.vercel-dns-017.com`)
- [x] Preserve email functionality (MX records intact)
- [ ] **WAITING:** DNS propagation to complete (check: https://dnschecker.org/#A/surplusrecoveries.com)
- [ ] **WAITING:** SSL certificate provisioning by Vercel
- [ ] Verify site loads on https://surplusrecoveries.com
- [ ] Test contact form redirect on custom domain
- [ ] Verify clean URLs work on custom domain

## Post-DNS Tasks

- [ ] Final testing of all functionality on custom domain
- [ ] Test legal pages load correctly
- [ ] Verify clean URLs work on custom domain
