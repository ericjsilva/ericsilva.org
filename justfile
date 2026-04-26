# Install dependencies
install:
    pnpm install

# Run the local Hugo server using Docker
serve:
    docker run --rm -v $(pwd):/src -p 1313:1313 peaceiris/hugo:latest-mod server --buildDrafts --buildFuture --bind 0.0.0.0

# Convert images in a directory to WebP
convert-images DIR:
    ./scripts/convert_images.sh {{DIR}}

# Format files with Biome
format:
    pnpm exec biome format --write .

# Lint files with Biome and Markdownlint
lint:
    pnpm exec biome lint .
    pnpm exec markdownlint "**/*.md"

# Format and lint all files
check: format lint
