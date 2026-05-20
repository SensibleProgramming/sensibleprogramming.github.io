# Pre-Launch Checklist

Your site is ready. Use this checklist to prepare for GitHub launch.

## ✅ Site Files

- [ ] `index.html` — Main site (check social links are correct)
- [ ] `README.md` — User guide
- [ ] `SETUP.md` — Module setup instructions
- [ ] `CLAUDE.md` — Project documentation
- [ ] `GITHUB-DEPLOY.md` — Deployment guide
- [ ] `setup-modules.ps1` — Automation script

## ✅ Educational Modules

- [ ] `modules/` folder created
- [ ] All 46 HTML files copied to `modules/`
- [ ] All infographic JPGs copied to `modules/`
- [ ] File names match exactly what's in `index.html` onclick paths

**Test locally first:**
```bash
# Open in browser to verify everything works
start index.html
```

Click 5-10 module cards to ensure they open correctly.

## ✅ GitHub Setup

- [ ] Created GitHub repository: `sensibleprogramming.github.io`
- [ ] Organization: `SensibleProgramming`
- [ ] Repository is **Public** (required for free Pages)
- [ ] No README/License yet (you're pushing your own files)

## ✅ Verify Social Links

Open `index.html` and check footer has correct URLs:

- [ ] Twitter/X: `https://x.com/sensibleprogra1` ✓
- [ ] GitHub: `https://github.com/SensibleProgramming` ✓

## ✅ Ready to Deploy

Once all above are checked:

```bash
# 1. Clone your new GitHub repo
git clone https://github.com/SensibleProgramming/sensibleprogramming.github.io.git
cd sensibleprogramming.github.io

# 2. Copy your files here
# (Copy index.html, modules/, README.md, SETUP.md, CLAUDE.md, GITHUB-DEPLOY.md)

# 3. Commit and push
git add .
git commit -m "Initial commit: Sensible Programming educational site with 46 modules"
git push -u origin main

# 4. Visit the site (wait 1-2 minutes)
# https://sensibleprogramming.github.io
```

## ✅ Post-Launch

- [ ] Site is live at https://sensibleprogramming.github.io
- [ ] Can click module cards and view content
- [ ] Social links work (click to verify)
- [ ] Responsive on mobile (open on phone)
- [ ] Share on Twitter: "🎉 Sensible Programming is live! 46 educational modules covering AI, security, DevOps, and Git. Learn the right way."

## 🚀 Ongoing Maintenance

Adding new modules? Follow this workflow:

1. Create your new HTML module
2. Save to `modules/[name].html`
3. Add card to `index.html` (copy existing card, update details)
4. Commit and push:
   ```bash
   git add .
   git commit -m "Add module: [Module Name]"
   git push
   ```
5. Check site in ~30 seconds

## 📋 Module Card Template

When adding new modules, copy this template:

```html
<div class="module-card" onclick="viewModule('modules/your-file.html', 'Your Title')">
    <div class="module-image">📚</div>
    <div class="module-content">
        <h4>Your Module Title</h4>
        <p>One-line description of what students will learn.</p>
        <div class="module-meta"><span class="tag">Tag1</span><span class="tag">Tag2</span></div>
        <a class="module-link">View Module →</a>
    </div>
</div>
```

**Remember:**
- Change emoji to match topic
- Update title (keep short)
- One sentence description
- Add relevant tags
- Change file path in `onclick`

## ❓ Help

- Deployment issues? See `GITHUB-DEPLOY.md`
- Adding modules? See `SETUP.md`
- Site structure? See `CLAUDE.md`

---

**You're ready! 🚀**

Once this launches, you can add modules daily and they'll be live within seconds. No rebuilds, no complexity—just add cards and push.
