#!/usr/bin/env ruby
require './person.rb'

people = Array.new     # or people = []

5.times do
  print "First Name: " # prompt for first name
  f = gets.chomp       # save first name to a variable

  print "Last Name: "  # prompt for last name
  l = gets.chomp       # save last name to a variable

  person = Person.new f, l
  people.push person
  # people.push Person.new(f, l)   <- one-line version
end

people.each do |person|
  puts person.greet
end
