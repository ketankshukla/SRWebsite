# SurplusRecoveries.com

A professional website for **Surplus Recoveries**, a service helping former homeowners recover surplus funds from foreclosure sales.

![Surplus Recoveries](https://www.surplusrecoveries.com/images/og-image.png)

## 🌐 Live Site

**[https://surplusrecoveries.com](https://surplusrecoveries.com)**

---

## 📋 Overview

Surplus Recoveries helps people recover money they're legally owed after foreclosure. When a property sells at auction for more than the debt owed, the excess (surplus funds) belongs to the former homeowner — but most people never know this money exists.

### Features

- **Single-page marketing site** with smooth scroll navigation
- **Educational blog** with 16 articles on surplus funds topics
- **Contact form** powered by Web3Forms
- **Mobile-responsive** design with click-to-call button
- **SEO optimized** with meta tags, Schema.org markup, and sitemap

---

## 🛠️ Tech Stack

| Technology                           | Purpose                                    |
| ------------------------------------ | ------------------------------------------ |
| HTML5 / CSS3                         | Static site with embedded styles           |
| JavaScript                           | Form validation, smooth scroll, dynamic UI |
| [Web3Forms](https://web3forms.com)   | Contact form backend (no server needed)    |
| [Vercel](https://vercel.com)         | Hosting with auto-deploy from GitHub       |
| [GreenGeeks](https://greengeeks.com) | Email hosting & DNS management             |

---

## 📁 Project Structure

```
SRWebsite/
├── index.html              # Main homepage
├── thank-you.html          # Form submission confirmation
├── privacy-policy.html     # Privacy policy
├── terms-of-service.html   # Terms of service
├── disclaimer.html         # Legal disclaimer
├── sitemap.xml             # XML sitemap for search engines
├── robots.txt              # Search engine crawling rules
├── vercel.json             # Vercel configuration (clean URLs)
├── favicon.svg             # Browser tab icon
├── blog/
│   ├── index.html          # Blog listing page
│   └── *.html (16 files)   # Individual blog articles
├── images/
│   └── og-image.png        # Social sharing image
├── PROGRESS.md             # Detailed session progress log
└── TODO.md                 # Task tracking & future enhancements
```

---

## 📝 Blog Articles

The site includes 16 educational articles covering:

- What surplus funds are and how they work
- State-by-state claim deadlines
- The 2023 Supreme Court ruling (Tyler v. Hennepin)
- How to check for unclaimed funds
- Documents needed to file a claim
- Common mistakes to avoid
- Tax implications
- Scam protection
- And more...

---

## 🚀 Deployment

The site auto-deploys to Vercel on every push to `main`:

```bash
git add .
git commit -m "Your commit message"
git push
```

Vercel handles:

- SSL certificate provisioning
- Clean URLs (no `.html` extensions)
- CDN distribution
- Automatic builds

---

## 📊 Project Documentation

| Document                   | Description                                                                |
| -------------------------- | -------------------------------------------------------------------------- |
| [PROGRESS.md](PROGRESS.md) | Detailed log of all development phases, DNS setup, and technical decisions |
| [TODO.md](TODO.md)         | Completed tasks checklist and future enhancement ideas                     |

---

## 🔧 Configuration

### Vercel (`vercel.json`)

```json
{
  "cleanUrls": true,
  "trailingSlash": false
}
```

### Contact Form

- Provider: Web3Forms (free tier)
- Redirect: `/thank-you`
- Bot protection: Honeypot field

### DNS

- **A Record:** Points to Vercel (`76.76.21.21`)
- **CNAME (www):** Points to Vercel DNS
- **MX Records:** Point to GreenGeeks (email hosting)

---

## 📈 SEO Features

- ✅ Meta descriptions on all pages
- ✅ Open Graph tags for social sharing
- ✅ Twitter card meta tags
- ✅ Schema.org LocalBusiness structured data
- ✅ XML sitemap submitted to Google Search Console
- ✅ Canonical URLs
- ✅ Mobile-responsive design
- ✅ Fast load times (static HTML)

---

## 📞 Contact

**Surplus Recoveries**  
📧 info@surplusrecoveries.com  
📱 (858) 230-8322  
🌐 [surplusrecoveries.com](https://surplusrecoveries.com)

---

## 📄 License

© 2025 Surplus Recoveries. All rights reserved.
