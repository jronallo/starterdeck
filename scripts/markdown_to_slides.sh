#! /usr/bin/env bash

# markdown_to_slides.sh

# Converts a markdown file into a DZslides presentation. Pandoc must be installed. Must be run from root like scripts/markdown_to_slides.sh

pandoc -w dzslides --include-after-body=templates/include-after-body-slides.html --standalone --self-contained presentation.md > presentation.html

# The line above could be changed to output to presentation-tmp.html and this line uncommented to use sed to insert some
# other text. Sometimes this is necessary when a script can't be turned into a data URI by pandoc.
# sed 's/<!-- insert before include-after-body-slides -->/<script src="\/socket.io\/socket.io.js" type="text\/javascript"><\/script><script src="http:\/\/localhost:35729\/livereload.js"><\/script>/' presentation-temp.html > presentation.html

pandoc --include-after-body=templates/include-after-body-fullpage.html --standalone --self-contained --section-divs presentation.md > presentation-fullpage.html