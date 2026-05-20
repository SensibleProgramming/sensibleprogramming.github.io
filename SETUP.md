# Setup Guide - Integrating Educational Modules

## Overview

The site is now structured to display your 46+ educational modules organized by topic. This guide shows how to set it up.

## File Structure

```
sensible-programming/
├── index.html              # Main hub (displays all modules)
├── README.md               # Deployment guide
├── CLAUDE.md               # Project documentation
├── SETUP.md                # This file
└── modules/                # Directory for your educational content
    ├── ai-taxonomy-tree.html
    ├── neural-networks-infographic.jpg
    ├── prompt-engineering-best-practices.html
    ├── [... all 46 modules ...]
    └── ...
```

## Quick Setup (2 steps)

### Step 1: Copy Your Modules Folder

Copy all files from `C:\Dev\AI\Brain\Resources\Assets\educational-content\` into a new `modules/` folder in the project:

```
sensible-programming/modules/
```

The folder should contain all 46 HTML files and infographics:
- `ai-taxonomy-tree.html`
- `neural-networks-infographic.jpg`
- `prompt-engineering-best-practices.html`
- ... (all others)

**On Windows:**
```powershell
# From sensible-programming directory
Copy-Item -Path "C:\Dev\AI\Brain\Resources\Assets\educational-content\*" -Destination "modules" -Recurse
```

### Step 2: Verify Links in index.html

The `index.html` file has placeholders for module paths. They're set to `modules/[filename]`. If you place files anywhere else, update the paths accordingly.

## How the Site Works

1. **Landing Page** (`index.html`)
   - Hero section with brand intro
   - Module catalog organized by 4 topics:
     - 🤖 AI Fundamentals (8 modules)
     - 🔒 AI Security & Safety (6 modules)
     - ⚙️ AI Operations & DevOps (4 modules)
     - 📝 Git & Version Control (3 modules)
   - Learning paths for different roles
   - Social links and footer

2. **Module Cards**
   - Each card is clickable
   - Opens a modal viewer
   - Shows HTML modules in iframe or images in lightbox
   - Easy navigation back to main site

3. **Learning Paths**
   - Pre-curated sequences by role:
     - Developers new to AI
     - Security teams
     - DevOps/MLOps professionals

## Adding New Modules

### When You Create a New Module

1. Save it to `modules/` folder with a clear filename:
   - Use kebab-case: `topic-title.html`
   - Example: `fine-tuning-models.html`

2. Determine which topic it belongs to:
   - 🤖 AI Fundamentals
   - 🔒 AI Security & Safety
   - ⚙️ AI Operations & DevOps
   - 📝 Git & Version Control

3. Add a card to `index.html`:

```html
<div class="module-card" onclick="viewModule('modules/your-module.html', 'Your Title')">
    <div class="module-image">📚</div>
    <div class="module-content">
        <h4>Your Module Title</h4>
        <p>Your one-line description here</p>
        <div class="module-meta"><span class="tag">Tag1</span><span class="tag">Tag2</span></div>
        <a class="module-link">View Module →</a>
    </div>
</div>
```

**Tip:** Copy an existing card and modify the title, description, emoji, and onclick path.

### Card Elements Explained

- **module-image emoji**: Visual icon (change to match topic)
- **h4 title**: Module name (keep short)
- **description**: One sentence about what students will learn
- **tags**: Category labels (e.g., "Fundamentals", "Advanced", "Security")
- **onclick path**: Should match your actual file name

## Emoji Guide

Use these for module-image to maintain consistency:

**AI Fundamentals:**
- 🌳 Taxonomy
- 🧠 Neural Networks
- 🗣️ Language Models
- ✍️ Prompt Engineering
- 📚 Knowledge/RAG
- 🔍 Search/Vector DB
- 🎨 Image Generation
- ⛓️ Blockchain

**AI Security:**
- 💉 Injection Attacks
- 🛡️ Security/Protection
- 🔐 Agents Security
- 🔑 Keys/API Security
- ⚖️ Ethics
- 📋 Privacy/Compliance

**DevOps:**
- 🐳 Docker/Containers
- 🚀 CI/CD/Deployment
- ✅ Testing
- 📊 Monitoring

**Git:**
- 💻 Commands
- 🌿 Branching
- 🔄 History/Reflog

## Updating Learning Paths

If you add modules that fit an existing learning path, update the path list:

```html
<div class="learning-path">
    <h4>👨‍💻 Developers New to AI</h4>
    <ol>
        <li>AI Taxonomy Tree</li>
        <li>Neural Networks</li>
        <li>Your New Module Title</li>
        <!-- ... -->
    </ol>
</div>
```

## Deployment

Once everything is set up locally:

1. Verify the site works:
   - Open `index.html` in your browser
   - Click module cards to verify they open correctly
   - Check responsive design on mobile

2. Push to GitHub:
   ```bash
   git add .
   git commit -m "Add educational modules to site"
   git push
   ```

3. Site automatically updates at `https://sensible-programming.github.io`

## Troubleshooting

**Modules not loading?**
- Check file paths in `onclick="viewModule('...')"` match actual filenames
- Verify `modules/` folder exists at site root
- Check browser console for 404 errors

**Images not showing?**
- Verify image files are in `modules/` folder
- Check filename spelling matches exactly (case-sensitive)

**Modal not closing?**
- Refresh the page
- Clear browser cache

## Performance Notes

- Single-page application loads quickly
- Module files loaded on-demand (only when clicked)
- Lightweight CSS, no external dependencies
- Infographics: JPEG compression recommended for faster loading

## Next Steps

1. Copy your `educational-content` folder to `modules/`
2. Test locally: open `index.html` in browser
3. Push to GitHub
4. Site is live! Share links on social media

---

**Last updated:** 2026-05-20
