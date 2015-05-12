#!/usr/bin/env ruby
# Read each line of a file

if ARGV.empty?
  puts "Give me a file name."
else
  file = File.open(ARGV.first, 'r')
  arr = []
  while (line = file.gets)
    arr.push line.chomp
  end

  puts arr
end
