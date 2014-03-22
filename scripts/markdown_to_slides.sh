#! /usr/bin/env bash

# markdown_to_slides.sh

# Converts a markdown file into a DZslides presentation. Pandoc must be installed. Must be run from root like scripts/markdown_to_slides.sh

pandoc -w dzslides --include-after-body=templates/include-after-body-slides.html --standalone --self-contained presentation.md > presentation.html

pandoc --include-after-body=templates/include-after-body-fullpage.html --standalone --self-contained presentation.md > presentation-fullpage.html