# Sensible Programming - Educational Site

**46 interactive educational modules** on AI, security, DevOps, and Git. A clean, modern static website built with pure HTML, CSS, and vanilla JavaScript—no build tools required.

**Live at:** https://sensibleprogramming.github.io  
**GitHub:** https://github.com/SensibleProgramming  
**Twitter:** @sensibleprogra1

## Features

- 🎨 Dark mode design matching brand colors (blue #1E6FCE & dark #0F1419)
- 📚 **46 educational modules** organized by topic
- 📱 Fully responsive mobile-first design
- ⚡ Fast-loading static content (no build step)
- 🔗 Easy to add new modules (just copy a card)
- 🚀 GitHub Pages ready (free hosting)

## File Structure

```
sensible-programming/
├── index.html              # Main site hub & module catalog
├── modules/                # All 46 educational modules
│   ├── ai-taxonomy-tree.html
│   ├── neural-networks-infographic.jpg
│   ├── prompt-engineering-best-practices.html
│   └── [... 43 more modules ...]
├── README.md               # This file
├── SETUP.md                # How to add new modules
├── CLAUDE.md               # Project documentation
├── GITHUB-DEPLOY.md        # GitHub Pages deployment guide
├── PRE-LAUNCH-CHECKLIST.md # Pre-launch verification
├── setup-modules.ps1       # Automated setup script
└── .gitignore              # Git configuration
```

## Getting Started

### Local Development

1. Open `index.html` in your browser
2. Edit the HTML to add your content
3. No build step required!

### Customizing Content

All content is in `index.html`:

- **Tutorials Section**: Edit the cards in the "Learn" section
- **Blog Section**: Add/modify cards in the "Blog" section
- **Resources Section**: Update the "Resources" section
- **Social Links**: Update the footer social links with your actual URLs:
  - `https://facebook.com/[your-handle]`
  - `https://x.com/[your-handle]`
  - `https://github.com/[your-handle]`

### Brand Colors

The site uses these colors from your logo:
- **Primary Blue**: `#1E6FCE`
- **Dark Background**: `#0F1419`
- **Accent Light Blue**: `#00d4ff`

To change colors, modify the CSS variables at the top of `index.html`:

```css
:root {
    --primary-blue: #1E6FCE;
    --dark-bg: #0F1419;
    --accent: #00d4ff;
    /* ... */
}
```

## Quick Deploy (5 minutes)

### For SensibleProgramming Organization

1. **Create GitHub repo:**
   - Name: `sensibleprogramming.github.io`
   - Organization: `SensibleProgramming`
   - Public: ✓ (required)

2. **Clone and add files:**
   ```bash
   git clone https://github.com/SensibleProgramming/sensibleprogramming.github.io.git
   cd sensibleprogramming.github.io
   # Copy index.html, modules/, README.md, SETUP.md, CLAUDE.md here
   ```

3. **Push to GitHub:**
   ```bash
   git add .
   git commit -m "Initial commit: Sensible Programming with 46 modules"
   git push -u origin main
   ```

4. **Visit:** https://sensibleprogramming.github.io (wait 1-2 min)

📖 **See [GITHUB-DEPLOY.md](GITHUB-DEPLOY.md) for detailed instructions.**

## Adding Content Later

### To Add a New Tutorial Card

Add this HTML in the tutorials grid:

```html
<div class="card">
    <h3>📚 Your Title Here</h3>
    <p>Your description of the tutorial or topic.</p>
    <div class="card-meta">
        <span class="tag">Tag1</span>
        <span class="tag">Tag2</span>
    </div>
</div>
```

### To Add a Blog Post

Add a card in the blog section with the same structure, or link to external articles:

```html
<div class="card">
    <h3>📝 Article Title</h3>
    <p>Brief description...</p>
    <a href="[link-to-article]" class="btn btn-secondary" style="margin-top: 1rem;">Read →</a>
</div>
```

## Performance

- Single static HTML file (~20KB)
- No external dependencies (fonts, frameworks)
- No build step
- Instant load times

## Future Enhancements

If you want to add more interactivity later:
- Add a contact form (Formspree, Netlify Forms)
- Create a blog with Markdown (use a static site generator like Hugo or 11ty)
- Add a newsletter signup
- Integrate with your GitHub repos

## License

© 2026 Sensible Programming. All rights reserved.
