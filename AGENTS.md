# AGENT.md

Guidance for agents (e.g., Claude) when working in this repository: Eric Silva's personal website and blog, built with Hugo (using the [Congo](https://jpanther.github.io/congo/) theme, managed via Hugo modules). The site covers recipes, woodworking projects, photography, Scouting activities, and technology.

## Project Context

### Site Structure

- **Hugo Static Site**: Built with Go-based static site generator, Hugo Extended version recommended
- **Content Areas**:
  - Personal blog posts (`content/posts/`)
  - Recipes (`content/recipes/`)
  - Woodworking projects (`content/woodworking/`)
  - Laser projects (`content/laser/`)
  - Photography (`content/photography/`)
  - Commissioner Minutes for Scouting (`content/commissioner-minutes/`)
  - About page (`content/about-me.md`)
- **Configuration**: Located in `config/_default/` (`hugo.toml`, `params.toml`, etc.)
- **Assets**: Images in `assets/images/`, CSS/SCSS in `assets/`
- **Layouts**: Custom HTML templates and shortcodes in `layouts/` (e.g. `lightbox-gallery.html`)
- **Archetypes**: Templates for new content types in `archetypes/` (`laser.md`, `woodworking.md`, `photography.md`, `default.md`)
- **Public**: Generated site output in `public/` (build artifact, not source)

## Building and Running

The project uses `just` as a task runner (see `justfile`):

- `just install` — install dependencies with pnpm
- `just serve` — run a Hugo dev server inside Docker (`peaceiris/hugo:latest-mod`) at `http://localhost:1313`, with drafts and future content enabled
- `just convert-images <directory>` — convert `IMG_*` photos in a directory to WebP via `scripts/convert_images.sh` (ImageMagick); the script's default naming pattern is per-project (e.g. `printer-stand-XX.webp`) and needs the prefix adjusted per post
- `just format` — format with Biome (`pnpm exec biome format --write .`)
- `just lint` — lint with Biome and rumdl (`pnpm exec biome lint .` and `pnpm exec rumdl check .`)
- `just check` — format then lint

Production build (manual): `hugo --minify`.

### Content Guidelines

#### Writing Style

- Personal, conversational tone
- Authentic storytelling with practical value
- Include personal anecdotes and lessons learned
- Focus on helping others through shared experiences

#### Technical Preferences

- Use WebP format for images (optimized for performance); target 85% quality during conversion
- Maintain responsive design principles
- Keep accessibility in mind
- Follow Hugo best practices for content organization

#### Recipe Posts

- Include personal stories about the dish
- Provide clear, tested instructions
- Share variations and dietary alternatives
- Include prep/cook times and serving information
- Add storage and reheating tips

#### Woodworking Projects

- Document the entire project journey
- Include detailed material lists and sources
- Provide step-by-step instructions with safety notes
- Share lessons learned and troubleshooting tips
- Include project photos or detailed descriptions

#### Photography Content

- Tell the story behind the images
- Share technical details when relevant
- Discuss creative process and inspiration
- Provide tips for aspiring photographers
- Connect visual narratives to broader themes

#### Scouting Content

- Focus on leadership and character development
- Share practical wisdom from volunteering experience
- Include inspirational stories and parables
- Emphasize the positive impact of Scouting programs

## Development Guidelines

### Hugo Specifics

- Use front matter with appropriate dates and tags
- Leverage Hugo's content organization features
- Optimize for build performance
- Ensure proper metadata for SEO

### Code Quality

- Follow Go conventions for Hugo development
- Use semantic HTML and accessible markup
- Optimize images and assets for web delivery
- Maintain clean, readable SCSS/CSS

### Content Management

- Filenames: lowercase with hyphens (e.g. `my-new-post.md`)
- Front matter: always include `title`, `date`, `tags`, and `categories`; use `draft: true` for works in progress
- Include appropriate tags and categories
- Maintain consistent front matter structure
- Optimize for search and discovery

### Image Guidelines

- All new images must be in WebP format
- Store images in `static/img/` or within the post's leaf bundle directory (e.g. `content/woodworking/printer-stand/`)

### Styling

- Add custom styles to `assets/scss/custom.scss` or `assets/css/custom.css`
- The project uses Hugo Pipes for asset processing

## Technical Stack

- **Generator**: Hugo (Go-based)
- **Styling**: SCSS/CSS
- **Images**: WebP optimized
- **Deployment**: Static hosting (likely Netlify/Vercel)
- **Version Control**: Git/GitHub

## Personal Context

Eric is a software developer with extensive experience in cloud infrastructure, AWS, Python, Java, and Terraform. He's also deeply involved in Boy Scouts of America as a volunteer leader, enjoys woodworking, photography, cooking, and various outdoor activities. He lives in Pennsylvania with his family and various pets.

When helping with content creation or technical improvements, consider Eric's dual focus on practical technical solutions and authentic personal storytelling that can help and inspire others.
