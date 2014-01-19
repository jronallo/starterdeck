guard 'livereload' do
  watch("presentation.html")
end

guard 'sass', :input => 'assets'

guard :shell do
  # If any of these change run the script to build presentation.html
  watch('presentation.md') {`./scripts/markdown_to_slides.rb`}
  watch('assets/presentation.css') {`./scripts/markdown_to_slides.rb`}
  watch('assets/custom.js') {`./scripts/markdown_to_slides.rb`}
  watch('scripts/markdown_to_slides.rb') {`./scripts/markdown_to_slides.rb`}
  watch(%r{images/*\.(jpg|png)}) {`./scripts/markdown_to_slides.rb`}
  # watch('presentation.html') {`cp presentation.html ../prelim_inventory/source/presentations/DIRECTORY_OF_PRESENTATION/slides.html; echo "Moved presentation to blog!"`}
end
