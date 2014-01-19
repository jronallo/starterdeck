#!/usr/bin/env ruby

# outline_markdown.rb

file = File.read('presentation.md')

index = 0
file.each_line do |line|
  if /^#\s/.match line
    index += 1
    title = line.sub('#', index.to_s)
    puts title
  end
end