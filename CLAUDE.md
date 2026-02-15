# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Quest4Science is a Jekyll-based blog focused on science, math, history, geography, and technology education. It uses the Minimal Mistakes theme (v4.27.3) with the "neon" skin.

- **Site URL**: https://quest4science.xyz
- **Theme**: Minimal Mistakes Jekyll theme with heavy customization
- **Comments**: Giscus (GitHub Discussions-based)

## Common Commands

```bash
# Install dependencies
bundle install

# Local development server (http://localhost:4000)
bundle exec jekyll serve

# Build for production
JEKYLL_ENV=production bundle exec jekyll build

# Build including drafts
bundle exec jekyll build --drafts

# Preview with file watching (uses test/ directory)
bundle exec rake preview
```

## Deployment

Deployment is automated via GitHub Actions on push to `main`:
1. GitHub Actions builds with `bundle exec jekyll build`
2. Deploys via rsync to quest4science.xyz
3. Requires `DEPLOY_KEY` secret for SSH access

## Architecture

### Content Structure
- `_posts/` - Blog articles in Markdown (format: `YYYY-MM-DD-title.md`)
- `_pages/` - Static pages (category-archive, tag-archive)
- `assets/images/` - Post images

### Post Front Matter
Posts use the `single` layout with `classes: wide`. Required fields:
- `title`, `date`, `categories`, `tags`
- Optional: `image_name` for featured images, `comments: true`

### Layout System
- `_layouts/` - Liquid templates (home-splash.html is custom, single.html for posts)
- `_includes/` - Reusable components (header, footer, comments, etc.)
- `_sass/` - SCSS stylesheets extending Minimal Mistakes theme

### Configuration
- `_config.yml` - Main Jekyll configuration (site settings, plugins, defaults)
- `_data/navigation.yml` - Site navigation menu
- `Gemfile` - Ruby dependencies (Jekyll 4.3+, plugins)

## Key Plugins

- jekyll-paginate (pagination)
- jekyll-sitemap (XML sitemap)
- jekyll-gist (GitHub gist embedding)
- jekyll-feed (RSS/Atom)
- jekyll-include-cache (performance)
- jekyll-seo-tag (SEO metadata)

## Archive Pages

Uses Liquid-based archives (GitHub Pages compatible):
- Categories: `/categories/`
- Tags: `/tags/`

Note: jekyll-archives plugin is commented out in _config.yml to maintain GitHub Pages compatibility.
