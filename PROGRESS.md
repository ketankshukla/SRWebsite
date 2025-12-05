# SRWebsite Project Progress

## Project Overview

- **Website:** Surplus Recoveries - Foreclosure overage fund recovery service
- **Type:** Single-page static HTML site with contact form
- **Original Hosting:** FTP deployment on GreenGeeks
- **New Hosting:** Vercel (via Git auto-deployment)
- **Custom Domain:** surplusrecoveries.com

---

## Session Progress (Dec 4, 2025)

### Phase 1: Code Review

- Reviewed `index.html` (1614 lines) and `thank-you.html` (271 lines)
- **Findings:**
  - Clean, self-contained code with embedded CSS
  - Responsive design with media queries for tablet/mobile
  - Working contact form using Web3Forms API
  - Good UX patterns: smooth scroll, FAQ accordion, form validation
  - Minor issues: hardcoded copyright year (2024), placeholder social links

### Phase 2: Git Repository Setup

- Initialized Git repository
- Created `.gitignore` file (OS files, IDE folders, logs, env files)
- Made initial commit with 4 files
- Pushed to GitHub: `https://github.com/ketankshukla/SRWebsite`

### Phase 3: Vercel Deployment

- Connected GitHub repo to Vercel
- Deployed successfully to: `https://sr-website-seven.vercel.app/`
- Site auto-deploys on every push to `main` branch

### Phase 4: Contact Form Redirect Fix

- **Issue:** Form was redirecting to Web3Forms default thank-you page
- **Fix:** Updated redirect URL in form from `surplusrecoveries.com` to Vercel URL
- Initially tried dynamic JavaScript approach, then switched to hardcoded URL

### Phase 5: Clean URLs Implementation

- **Issue:** URLs showing `.html` extensions (unprofessional)
- **Fix 1:** Created `vercel.json` with `cleanUrls: true` and `trailingSlash: false`
- **Fix 2:** Updated `thank-you.html` links from `index.html` to `/`
- **Fix 3:** Added JavaScript to clean `.html` from URL bar using `history.replaceState()`
- Clean URLs work on Vercel domain but not custom domain (due to GreenGeeks proxy)

### Phase 6: Custom Domain Setup (surplusrecoveries.com)

- **Goal:** Point custom domain from GreenGeeks to Vercel while keeping email on GreenGeeks

#### DNS Configuration

- Added domain in Vercel dashboard
- Vercel provided DNS records:
  - **A Record:** `216.198.79.1`
  - **CNAME Record:** `550bdf806002b399.vercel-dns-017.com`

#### GreenGeeks Configuration Challenges

1. **Initial Issue:** GreenGeeks was serving old files from `public_html/surplusrecoveries.com` folder
2. **Attempted Fix:** Deleted files from folder → Site showed directory listing
3. **Attempted Fix:** Deleted entire folder → Accidentally removed addon domain and DNS zone
4. **Recovery:** Re-added addon domain in GreenGeeks cPanel
   - Encountered 500 Internal Server Error initially
   - Eventually succeeded after retry
5. **Email Preserved:** `info@surplusrecoveries.com` still works (MX records intact)

#### Current Status (Pending DNS Propagation)

- A record set to `216.198.79.1` in GreenGeeks Zone Editor
- CNAME for `www` set to Vercel DNS
- DNS propagation in progress (showing mixed IPs on dnschecker.org)
- SSL certificate will be issued once DNS fully propagates
- **Expected completion:** 30 minutes to a few hours

---

## Files Modified

### New Files Created

| File          | Purpose                          |
| ------------- | -------------------------------- |
| `.gitignore`  | Git ignore rules                 |
| `TODO.md`     | Task tracking                    |
| `vercel.json` | Vercel configuration (cleanUrls) |
| `PROGRESS.md` | This document                    |

### Files Modified

| File             | Changes                                                      |
| ---------------- | ------------------------------------------------------------ |
| `index.html`     | Added URL cleaning script, updated form redirect URL         |
| `thank-you.html` | Added URL cleaning script, changed `index.html` links to `/` |

---

## Git Commits

1. `Initial commit - Surplus Recoveries website`
2. `Fix: Dynamic redirect URL for thank-you page`
3. `Fix: Use hardcoded absolute URL for Web3Forms redirect`
4. `Fix: Use root path for cleaner homepage URLs`
5. `Add cleanUrls config for extension-free URLs`
6. `Add trailingSlash config for clean URLs`
7. `Add JS to clean .html extensions from URLs`
8. `Update redirect URL to custom domain surplusrecoveries.com`

---

## Pending Tasks

1. **Wait for DNS propagation** - All servers should resolve to `216.198.79.1`
2. **Verify SSL certificate** - Vercel will auto-provision once DNS propagates
3. **Test contact form** - Ensure redirect works on custom domain
4. **Test clean URLs** - Verify `.html` extensions are removed on custom domain
5. **Pre-deployment tasks** (from TODO.md):
   - Update copyright year
   - Update social links
   - Add/remove legal pages

---

## Key URLs

- **GitHub Repo:** https://github.com/ketankshukla/SRWebsite
- **Vercel Deployment:** https://sr-website-seven.vercel.app/
- **Custom Domain:** https://surplusrecoveries.com (pending DNS)
- **DNS Checker:** https://dnschecker.org/#A/surplusrecoveries.com

---

## Technical Notes

### Why Clean URLs Don't Work on Custom Domain (Currently)

The `vercel.json` cleanUrls setting works on the Vercel domain but not the custom domain because GreenGeeks was proxying requests. After proper DNS propagation, this should resolve.

### Email Configuration

- Email hosting remains on GreenGeeks
- MX records point to GreenGeeks mail servers
- Subdomains (webmail, webdisk) point to GreenGeeks IP (`108.x.x.x`)
- Only root domain A record points to Vercel

### Form Configuration

- Uses Web3Forms API (free tier)
- Access key: `c021d7c9-4b64-4a46-a658-2aa51b556b04`
- Redirect URL: `https://surplusrecoveries.com/thank-you`
- Includes bot protection (honeypot checkbox)
