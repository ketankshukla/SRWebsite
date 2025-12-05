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
- [x] DNS propagation complete
- [x] SSL certificate provisioned by Vercel
- [x] Site loads on https://surplusrecoveries.com
- [x] Contact form redirect works on custom domain
- [x] Clean URLs work on custom domain

## SEO & Google Visibility

- [x] Add SEO meta tags (description, keywords, author, robots)
- [x] Add Open Graph tags for social sharing
- [x] Add Twitter card meta tags
- [x] Add Schema.org LocalBusiness structured data
- [x] Add canonical URLs to all pages
- [x] Create sitemap.xml
- [x] Create robots.txt

### Google Search Console

1. [x] Go to https://search.google.com/search-console
2. [x] Click "Add Property"
3. [x] Select "Domain" and enter `surplusrecoveries.com`
4. [x] Verify ownership:
   - Added TXT record: `google-site-verification=djmul99h9hw3b0xeoabx7p6jPzQZ3CSkfhAzlEJsGBo`
   - Verified successfully
5. [x] Submit sitemap: `https://surplusrecoveries.com/sitemap.xml`
6. [ ] **WAITING:** Re-check sitemap status after DNS propagates
7. [ ] **WAITING:** Request indexing via URL Inspection after DNS propagates

### Google Business Profile (Recommended for local SEO)

1. [ ] Go to https://business.google.com
2. [ ] Click "Manage now" or "Add your business"
3. [ ] Enter business name: "Surplus Recoveries"
4. [ ] Choose category: "Financial Consultant" or "Business Service"
5. [ ] Add your phone: (858) 230-8322
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

## Honesty & Credibility Updates (New Business)

- [x] Replace fake stats ($2.5M, 500+ families, 98%) with honest value props ($0 upfront, Free case review, 100% contingency)
- [x] Replace fake testimonials with educational "Did You Know?" industry facts section
- [x] Replace fake "$12,847 average" with "Risk-Free Recovery" messaging
- [x] Add favicon (SR logo) to all pages
- [x] Add click-to-call floating button (mobile only)

## Blog (Educational Content)

- [x] Create blog folder structure
- [x] Create blog index page (`/blog`)
- [x] Add blog link to main navigation
- [x] Create initial 5 educational articles
- [x] Add 10 more articles (16 total):
  1. [x] What Are Surplus Funds? A Complete Guide
  2. [x] How to Check If You Have Unclaimed Foreclosure Money
  3. [x] The 2023 Supreme Court Ruling That Changed Everything (Tyler v. Hennepin)
  4. [x] State-by-State Deadlines for Claiming Surplus Funds
  5. [x] Why Banks Don't Tell You About Surplus Funds
  6. [x] Tax Sale vs Mortgage Foreclosure: Key Differences
  7. [x] Documents You Need to Claim Surplus Funds
  8. [x] 7 Common Mistakes That Delay Surplus Fund Claims
  9. [x] Claiming Surplus Funds as an Heir: Complete Guide
  10. [x] How Much Surplus Funds Can You Expect?
  11. [x] Surplus Funds Scams: How to Protect Yourself
  12. [x] Judicial vs Non-Judicial Foreclosure: What It Means for Surplus
  13. [x] What Happens to Unclaimed Surplus Funds?
  14. [x] Are Surplus Funds Taxable? Tax Implications Explained
  15. [x] How Long Does the Surplus Funds Claim Process Take?
  16. [x] **FEATURED:** Why Hire a Professional for Surplus Funds Recovery?
- [x] Add blog preview cards to homepage (3 latest articles)
- [x] Order blog articles by date descending (newest first)
- [x] Add featured article section to blog index
- [x] Update sitemap with all blog pages
- [x] Add prev/next navigation to all blog articles (top and bottom)
- [x] Add images to all blog articles (2 unique images per post)
  - 32 images total across 16 articles
  - Images stored in `/images/` folder
  - AI prompts documented in `IMAGE_PROMPTS.md`
  - Styling: full-width, rounded corners, shadow, italic captions

## Value Proposition & Conversion

- [x] Add "Why Hire Us" section on homepage (DIY vs Professional comparison)
  - 12 pain points for DIY approach
  - 12 benefits for working with us
  - Compelling CTA
- [x] Create featured blog article explaining DIY vs professional recovery
- [x] Fix logo click behavior (scrolls to top when on homepage)

## Contact & Branding

- [x] Update phone number to (858) 230-8322 across all pages
- [x] Contact form working via Web3Forms
- [x] Thank you page redirect working
- [x] Add SR logo to header (homepage, blog index, all blog articles)
- [x] Add SR logo to footer (homepage)
- [x] Remove space between "Surplus" and "Recoveries" in logo text
- [x] Remove social media icons from footer (placeholder links)

## Social Sharing (Open Graph)

- [x] Add og:image meta tags to all pages
- [x] Add twitter:image meta tags to all pages
- [x] Create SR logo image for social sharing (`images/og-image.png`)
  - 800x800 square format
  - Matches favicon style (S white, R green)
  - Blue gradient background with rounded corners

## Post-DNS Tasks

- [x] Final testing of all functionality on custom domain
- [x] Test legal pages load correctly
- [x] Verify clean URLs work on custom domain

## Future Enhancements (Suggested)

### High Priority - Conversion & Trust

- [ ] **Testimonials/Reviews Section** - Add real client testimonials once available (with permission)
- [ ] **Case Studies** - Document successful recoveries (anonymized) with amounts and timelines
- [ ] **Trust Badges** - Add "BBB Accredited", "Licensed & Insured", or similar credentials
- [ ] **Live Chat Widget** - Add Tidio, Crisp, or similar for instant visitor engagement
- [ ] **Exit Intent Popup** - Capture leads before they leave with a free consultation offer

### Medium Priority - SEO & Visibility

- [ ] **Google Analytics** - Track visitor behavior and conversion rates
- [ ] **Google Business Profile** - Essential for local SEO and Google Maps visibility
- [ ] **FAQ Schema Markup** - Add structured data for FAQ section to appear in search results
- [ ] **Blog Search** - Add search functionality to blog index
- [ ] **Related Articles** - Show 2-3 related posts at the bottom of each article
- [ ] **Email Newsletter Signup** - Build an email list for nurturing leads

### Lower Priority - Polish & Features

- [ ] **Dark Mode Toggle** - Modern UX feature some users prefer
- [ ] **Reading Progress Bar** - Show progress indicator on blog articles
- [ ] **Estimated Reading Time** - Already have this, but could make it dynamic
- [ ] **Social Share Buttons** - Add share buttons to blog articles
- [ ] **Print-Friendly Styles** - Allow users to print articles cleanly
- [ ] **Accessibility Audit** - Ensure WCAG compliance (alt text, contrast, keyboard nav)
- [ ] **Performance Optimization** - Lazy load images, minify CSS/JS
- [ ] **404 Page** - Custom error page with helpful links

### Content Ideas

- [ ] **State-Specific Landing Pages** - Create pages for California, Texas, Florida, etc.
- [ ] **Video Content** - Explainer video on homepage about the process
- [ ] **Downloadable Guide** - PDF checklist in exchange for email signup
- [ ] **Calculator Tool** - "Estimate Your Surplus Funds" interactive calculator
- [ ] **Timeline Infographic** - Visual representation of the claim process
