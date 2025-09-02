---
description: "Hugo development best practices for site structure, content organization, and performance optimization"
applyTo: "**/*.md,**/config/**/*,**/layouts/**/*,**/assets/**/*,**/static/**/*"
---

# Hugo Development Best Practices

Follow these guidelines when working with the Hugo static site generator for ericsilva.org.

## Content Organization

### Directory Structure
```
content/
├── posts/                    # Personal blog posts
├── recipes/                  # Recipe content
├── commissioner-minutes/     # Scouting leadership content
└── about-me.md              # Static about page
```

### File Naming Conventions
- Use lowercase with hyphens: `my-favorite-recipe.md`
- Include dates in post filenames when helpful: `2025-09-02-project-update.md`
- Keep names descriptive but concise
- Avoid special characters and spaces

## Front Matter Standards

### Required Front Matter
```yaml
---
title: "Descriptive Title"
date: 2025-01-01T10:00:00-05:00
tags:
  - relevant
  - descriptive-tags
categories:
  - category-name
---
```

### Optional Front Matter
- `showDate: false` - Hide date display
- `showReadingTime: false` - Hide reading time estimate
- `showWordCount: false` - Hide word count
- `draft: true` - Mark as draft (won't build in production)

## Image Optimization

### File Formats
- **Primary**: Use WebP format for all new images
- **Fallback**: Keep original formats only if WebP causes compatibility issues
- **Quality**: Use 85% quality for WebP conversion via ImageMagick

### Image Organization
```
static/img/
├── about/           # Profile and about page images
├── posts/           # Blog post images
└── recipes/         # Recipe-related images
```

### Image References
- Use relative paths: `/img/posts/my-image.webp`
- Include descriptive alt text: `![Description](/img/posts/image.webp)`
- Optimize file sizes before adding to repository

### ImageMagick Conversion
```bash
# Convert to WebP with 85% quality
magick original-image.jpg -quality 85 optimized-image.webp
```

## Performance Optimization

### Build Performance
- Keep image files under 500KB when possible
- Use Hugo's built-in image processing for responsive images
- Minimize the number of unused static files
- Leverage Hugo's fast rebuild capabilities during development

### Asset Management
- Place CSS/SCSS in `assets/` directory for Hugo Pipes processing
- Use Hugo's asset fingerprinting for cache busting
- Minimize external dependencies

## Content Guidelines

### Markdown Best Practices
- Use semantic heading hierarchy (H1 → H2 → H3)
- Include descriptive link text (not "click here")
- Use code blocks with language specification: ```bash
- Add line breaks between sections for readability

### SEO Considerations
- Write descriptive titles (50-60 characters)
- Use relevant tags and categories consistently
- Include meta descriptions when needed
- Optimize images with alt text

## Development Workflow

### Local Development
```bash
# Start Hugo development server
hugo server -D --buildDrafts

# Build for production
hugo --minify
```

### Content Creation
1. Create new content with Hugo: `hugo new posts/my-post.md`
2. Write content following the appropriate template
3. Test locally with `hugo server`
4. Optimize any images to WebP format
5. Review build output before committing

### Configuration Management
- Keep site configuration in `config/_default/` directory
- Use environment-specific config files when needed
- Document any custom shortcodes or templates

## Hugo-Specific Features

### Shortcodes
- Use built-in shortcodes when available
- Document any custom shortcodes in comments
- Keep shortcode usage consistent across content

### Taxonomies
- Use consistent tag naming (lowercase, hyphens)
- Limit categories to broad topics
- Tags should be specific and descriptive

### URL Structure
- Leverage Hugo's default URL structure: `/posts/post-name/`
- Use `slug` front matter to customize URLs when needed
- Maintain consistency in URL patterns

## Deployment Considerations

### Static Output
- Generated site goes to `public/` directory
- Ensure `public/` is in `.gitignore` if using automated deployment
- Verify all links work in production build

### Performance Monitoring
- Monitor build times (should be under 1 second for this site)
- Check for 404 errors in production
- Validate HTML output periodically

## Common Patterns

### Recipe Posts
- Place in `content/recipes/` directory
- Use consistent front matter structure
- Include cooking times and serving information

### Blog Posts
- Place in `content/posts/` directory
- Use descriptive tags for content discovery
- Include personal anecdotes and practical value

### Static Pages
- Place directly in `content/` for root-level pages
- Use `showDate: false` for timeless content
- Keep navigation structure simple

## Troubleshooting

### Common Issues
- **Build failures**: Check for YAML front matter syntax
- **Missing images**: Verify paths and file existence
- **Slow builds**: Check for large unoptimized images
- **Broken links**: Use relative paths consistently

### Hugo Commands
```bash
# Check for broken internal links
hugo --printUnusedTemplates

# Get detailed build information
hugo --verbose

# Clean generated files
hugo --cleanDestinationDir
```
