#! /usr/bin/env ruby

# markdown_to_slides.rb

# Converts a markdown file into a DZslides presentation. Pandoc must be installed.
# Read in the given CSS file and insert it between script tags just before the close of the body tag.

css_file = File.expand_path('../../assets/presentation.css', __FILE__)
js_file = File.expand_path('../../assets/starterdeck.js', __FILE__)
custom_js_file = File.expand_path('../../assets/custom.js', __FILE__)

css = File.read(css_file)
js  = File.read(js_file)
js += "\n" + File.read(custom_js_file)

`pandoc -w dzslides --standalone --self-contained presentation.md > presentation.html`

presentation = File.read('presentation.html')
livereload_js = %Q|<script src="http://localhost:35729/livereload.js"></script>|
style = "<style>#{css}</style>"
scripts = "<script>#{js}</script>"
presentation.sub!('</body>', "#{style}#{scripts}#{livereload_js}</body>")

File.open('presentation.html', 'w') do |fh|
  fh.puts presentation
end