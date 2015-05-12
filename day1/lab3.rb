#!/usr/bin/env ruby
print 'Enter your first name: '
name = gets.chomp
print 'Enter your secret agent name: '
secret_agent_name = gets.chomp
print "\nTell me a story that uses your name: "
story = gets.chomp
puts "\nOK, now the story is safely encoded for transmission!"
story.gsub! name, secret_agent_name.upcase
puts story.gsub 's', 'th'
