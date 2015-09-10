#!/bin/bash -eu

for adium in ~/Library/Application\ Support/Adium*; do
    styles="$adium/Message Styles"
    mkdir -p "$styles"
    rsync -av \
        --exclude "*.git*" \
        --exclude "install.sh" \
        --exclude "README.md" \
        . "$styles/$(basename "$(pwd)")"
done
