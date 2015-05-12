#!/usr/bin/env ruby
# Write to the end of a file.

if ARGV.empty?
  puts "Give me a file name."
else
  File.open(ARGV.first, 'a') do |file|
    file.puts 'I added this.'
  end

end
