# GitHub Pages Deployment Guide

Deploy your Sensible Programming educational site to GitHub Pages in 5 minutes.

## Your GitHub Setup

- **Organization**: `SensibleProgramming`
- **GitHub URL**: https://github.com/SensibleProgramming
- **Twitter/X**: @sensibleprogra1

## Deployment Option 1: Organization Site (Recommended)

This creates a site at `sensibleprogramming.github.io` (no repo name in URL)

### Steps

1. **Create a new GitHub repository** in the SensibleProgramming organization:
   - Go to https://github.com/new
   - Repository name: `sensibleprogramming.github.io`
   - Description: "Educational content for Sensible Programming"
   - Public: ✓ (required for free GitHub Pages)
   - Do NOT initialize with README (you'll push your own)

2. **Clone the repo locally:**
   ```bash
   cd C:\Dev\AI\Brain\Projects
   git clone https://github.com/SensibleProgramming/sensibleprogramming.github.io.git
   cd sensibleprogramming.github.io
   ```

3. **Copy your site files:**
   - Copy `index.html` to the repo root
   - Copy `README.md` to the repo root
   - Copy `CLAUDE.md` to the repo root
   - Copy `SETUP.md` to the repo root
   - Create a `modules/` folder and copy all modules

4. **Commit and push:**
   ```bash
   git add .
   git commit -m "Initial commit: Sensible Programming educational site"
   git push -u origin main
   ```

5. **Wait 1-2 minutes** and visit: **https://sensibleprogramming.github.io**

✅ Site is live!

## Deployment Option 2: Repository Site

If you prefer to host it in a different repo (e.g., `sensible-programming-site`):

### Steps

1. **Create repo** at https://github.com/new
   - Name: `sensible-programming-site` (or your choice)
   - Public: ✓

2. **Clone and copy files** (same as Option 1)

3. **Commit and push** (same as Option 1)

4. **Enable Pages:**
   - Go to repo Settings → Pages
   - Source: Deploy from branch
   - Branch: `main`
   - Folder: `/ (root)`
   - Save

5. **Visit:** `https://sensibleprogramming.github.io/sensible-programming-site/`

## After Deployment

### Adding New Modules

1. Create your new module HTML
2. Save to `modules/` folder
3. Add a card to `index.html` (see SETUP.md)
4. Commit and push:
   ```bash
   git add .
   git commit -m "Add new module: [Module Name]"
   git push
   ```
5. Changes live in ~30 seconds

### Updating Social Links

All social links are in the footer of `index.html`:
```html
<a href="https://x.com/sensibleprogra1" target="_blank">𝕏</a>
<a href="https://github.com/SensibleProgramming" target="_blank">⚙</a>
```

### Custom Domain (Optional)

If you want to use a custom domain (e.g., `sensibleprogramming.dev`):

1. Buy domain from registrar (Namecheap, GoDaddy, etc.)
2. Go to repo Settings → Pages
3. Under "Custom domain" enter your domain
4. Follow instructions to set DNS records
5. GitHub auto-provisions SSL certificate

## Troubleshooting

**Site not showing up?**
- Check Settings → Pages shows "Your site is published"
- Wait up to 10 minutes for first deployment
- Try clearing browser cache

**Modules not loading?**
- Check `modules/` folder exists at repo root
- Verify file paths in onclick match actual filenames
- Check browser console (F12) for 404 errors

**Need to rebuild after changes?**
- No! Static site updates immediately
- GitHub Pages serves files directly, no build step needed

## File Checklist

Before pushing, make sure you have:

- [ ] `index.html` — Main site
- [ ] `README.md` — Usage guide
- [ ] `SETUP.md` — Module setup guide
- [ ] `GITHUB-DEPLOY.md` — This file
- [ ] `CLAUDE.md` — Project docs
- [ ] `modules/` folder with all 46 HTML files and infographics

## GitHub Actions (Optional)

If you want auto-deployment on push (advanced), create `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./
```

But for a static site, this isn't necessary — GitHub Pages auto-deploys all pushes.

## Quick Command Cheat Sheet

```bash
# Clone repo
git clone https://github.com/SensibleProgramming/sensibleprogramming.github.io.git

# Make changes, then commit
git add .
git commit -m "Update: [description]"
git push

# Check status
git status

# View changes before committing
git diff
```

## More Help

- GitHub Pages docs: https://pages.github.com/
- GitHub Actions: https://docs.github.com/en/actions
- Custom domains: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-site

---

**Site:** https://sensibleprogramming.github.io  
**GitHub:** https://github.com/SensibleProgramming  
**Twitter:** @sensibleprogra1

**Last updated:** 2026-05-20
