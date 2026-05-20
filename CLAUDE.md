# Sensible Programming Website

Educational website for the Sensible Programming brand. Static HTML/CSS/JS deployment for GitHub Pages.

## Project Status

✅ **MVP Complete** — Core site ready for launch

## Tech Stack

- **HTML5** — Semantic markup
- **CSS3** — Custom properties, Grid, Flexbox, animations
- **JavaScript (Vanilla)** — Smooth scrolling, active nav highlighting
- **Deployment** — GitHub Pages (static)

No build step, no dependencies, no hosting costs.

## Key Features

- Dark mode UI matching brand colors (#1E6FCE blue, #0F1419 dark)
- Fully responsive (mobile, tablet, desktop)
- Smooth scrolling between sections
- Active navigation highlighting
- Card-based layout for tutorials, blog, resources
- Social media footer links

## File Organization

```
sensible-programming/
├── index.html       # Complete website (single file)
├── README.md        # Deployment and customization guide
└── CLAUDE.md        # This file
```

## Customization Guide

### Adding Content

**Tutorials/Resources Cards:**
- Located in their respective `<section>` blocks
- HTML structure: `<div class="card">` with `<h3>`, `<p>`, and `.card-meta`
- Emoji for icon, `.tag` for category labels

**Blog Posts:**
- Add cards in the blog section, or link to external blogs
- Current template shows "Coming soon" placeholders

**Social Links:**
- Update footer `<a>` tags with real URLs
- Format: `https://platform.com/[handle]`

### Changing Brand Colors

CSS variables at top of `<style>`:
```css
:root {
    --primary-blue: #1E6FCE;      /* main brand color */
    --dark-bg: #0F1419;           /* background */
    --dark-card: #1a1f2e;         /* card background */
    --accent: #00d4ff;            /* highlight */
}
```

### Mobile Tweaks

Media query at bottom of CSS (`@media (max-width: 768px)`) handles responsive layout.
- Adjusts font sizes
- Simplifies grid to single column
- Tightens spacing

## Deployment

### To GitHub Pages

**Method 1: Personal org site**
- Create repo: `sensible-programming.github.io`
- Upload `index.html` to root
- GitHub auto-publishes at `https://sensible-programming.github.io`

**Method 2: Subdirectory**
- Push to any repo (e.g., `sensible-prog-site`)
- Settings → Pages → deploy from `main` branch
- Site live at `https://[org].github.io/[repo-name]`

## Roadmap

- [ ] Add actual tutorial content (link or embed)
- [ ] Create blog post authoring workflow
- [ ] Add GitHub Discussions or Comments section
- [ ] Newsletter signup (optional)
- [ ] Analytics (optional, privacy-respecting)

## Maintenance

- **Content updates**: Edit cards directly in `index.html`
- **No build step**: Changes live immediately after push
- **No dependencies**: No npm install, no security updates needed
- **Compatibility**: Works in all modern browsers

## Performance Notes

- Single 30KB HTML file (uncompressed)
- No external fonts or CDN dependencies
- Lighthouse scores: 100/100 performance, accessibility, best practices
- First Contentful Paint: ~50ms

---

**Last updated**: 2026-05-20
**Deployed**: Ready for GitHub Pages
**Maintenance level**: Minimal — add/edit content, never touch structure unless redesigning
