guard 'livereload' do
  watch("presentation.html")
end

guard 'sass', :input => 'assets'

guard :shell do
  # If any of these change run the script to build presentation.html
  watch('assets/presentation.css')          {puts `./scripts/markdown_to_slides.sh`}
  watch('assets/presentation-fullpage.css') {puts `./scripts/markdown_to_slides.sh`}
  watch(%r{assets/.*.js})                    {puts `./scripts/markdown_to_slides.sh`}
  watch('scripts/markdown_to_slides.sh')    {puts `./scripts/markdown_to_slides.sh`}
  watch(%r{templates/.*})                   {puts `./scripts/markdown_to_slides.sh`}

  watch('presentation.md')                  {puts `./scripts/markdown_to_slides.sh`}

  watch(%r{images/*\.(jpg|png)})            {puts `./scripts/markdown_to_slides.sh`}
  # watch('presentation.html') {`cp presentation.html ../prelim_inventory/source/presentations/DIRECTORY_OF_PRESENTATION/slides.html; echo "Moved presentation to blog!"`}
end
