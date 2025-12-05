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

## SEO & Google Visibility

- [x] Add SEO meta tags (description, keywords, author, robots)
- [x] Add Open Graph tags for social sharing
- [x] Add Twitter card meta tags
- [x] Add Schema.org LocalBusiness structured data
- [x] Add canonical URLs to all pages
- [x] Create sitemap.xml
- [x] Create robots.txt

### Google Search Console (Do this after DNS propagates)

1. [ ] Go to https://search.google.com/search-console
2. [ ] Click "Add Property"
3. [ ] Select "Domain" and enter `surplusrecoveries.com`
4. [ ] Verify ownership:
   - Google will give you a TXT record to add
   - Go to GreenGeeks cPanel → Zone Editor
   - Add a TXT record with the value Google provides
   - Wait a few minutes, then click "Verify" in Google
5. [ ] Once verified, go to "Sitemaps" in the left menu
6. [ ] Enter `sitemap.xml` and click "Submit"
7. [ ] Check "URL Inspection" to request indexing of your homepage

### Google Business Profile (Recommended for local SEO)

1. [ ] Go to https://business.google.com
2. [ ] Click "Manage now" or "Add your business"
3. [ ] Enter business name: "Surplus Recoveries"
4. [ ] Choose category: "Financial Consultant" or "Business Service"
5. [ ] Add your phone: (619) 669-8545
6. [ ] Add your website: https://surplusrecoveries.com
7. [ ] Add business hours: Mon-Fri 9AM-6PM PST
8. [ ] Verify your business (Google will mail a postcard with a code, or call)
9. [ ] Once verified, add photos and respond to any reviews

### Google Analytics (Optional - for tracking visitors)

1. [ ] Go to https://analytics.google.com
2. [ ] Click "Start measuring"
3. [ ] Create an account name (e.g., "Surplus Recoveries")
4. [ ] Create a property for your website
5. [ ] Get your Measurement ID (starts with `G-`)
6. [ ] Provide the ID to add tracking code to the website

## Post-DNS Tasks

- [ ] Final testing of all functionality on custom domain
- [ ] Test legal pages load correctly
- [ ] Verify clean URLs work on custom domain
