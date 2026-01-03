# Run the local Hugo server using Docker
serve:
    docker run --rm -v $(pwd):/src -p 1313:1313 peaceiris/hugo:latest-mod server --buildDrafts --buildFuture --bind 0.0.0.0

# Convert images in a directory to WebP
convert-images DIR:
    ./scripts/convert_images.sh {{DIR}}
