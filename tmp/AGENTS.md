
Nine allowed topic slugs from front page:
  - Physics
  - Chemistry
  - Scientific Discoveries
  - History & Society
  - Geography
  - Technology
  - Biology
  - Medicine
  - Mathematics


• Updated all _posts front matter categories to use only the nine allowed topic
  slugs from the front page, normalizing each post to a single matching topic
  based on its title/content focus.




# Repository Guidelines

## Project Structure & Module Organization
- Jekyll site/theme with content and configuration at the repo root.
- Source content lives in `_posts/` (dated blog posts), `_pages/` (standalone pages), and `_drafts/` (unpublished drafts).
- Layout and UI building blocks are in `_layouts/`, `_includes/`, and `_sass/` (theme styles), with compiled assets under `assets/`.
- Site-wide configuration and data live in `_config.yml` and `_data/`.
- Build tooling lives in `Gemfile`, `Rakefile`, and `package.json` (JS minification tooling).

## Build, Test, and Development Commands
- `bundle install`: install Ruby/Jekyll dependencies.
- `bundle exec jekyll build`: build the site to `_site/` for validation.
- `bundle exec rake preview`: serve a live-reloading preview using the `test/` site (if present), on `http://localhost:4000/test/`.
- `bundle exec rake`: run default maintenance tasks (copyright, changelog, JS build, version sync).
- `bundle exec rake js`: rebuild `assets/js/main.min.js` via `uglifyjs`.

## Coding Style & Naming Conventions
- Use 2-space indentation for YAML, Liquid, HTML, and Sass.
- Keep YAML front matter at the top of content files; prefer concise, kebab-case keys.
- Posts follow `YYYY-MM-DD-title.md` in `_posts/`; assets use lowercase, kebab-case names.
- Avoid adding non-ASCII characters unless needed for content (posts may include them).

## Testing Guidelines
- No automated test suite is configured. Validate changes by running `bundle exec jekyll build` and/or `bundle exec rake preview`.
- If you update JavaScript sources, regenerate `assets/js/main.min.js` with `bundle exec rake js`.

## Commit & Pull Request Guidelines
- Recent commits use terse, lowercase prefixes like `modified:` or `new file:` followed by affected paths; follow this convention where possible.
- Branch off `master`, use descriptive branch names (e.g., `fix-header-nav`), and open PRs with a clear summary and rationale.
- For visual changes, include a screenshot or describe the affected layout/page.

## Configuration Tips
- Keep `jekyll-include-cache` in the `Gemfile` and `_config.yml` plugins to avoid build errors.
- When bumping versions, use `bundle exec rake` to propagate the version across docs and generated files.
