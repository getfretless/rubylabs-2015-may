#!/usr/bin/env ruby
require './person.rb'

print "First Name: " # prompt for first name
f = gets.chomp       # save first name to a variable

print "Last Name: "  # prompt for last name
l = gets.chomp       # save last name to a variable

# We could do it this way...
# p = Person.new       # instantiate a Person object
# p.first_name = f     # set the Person's first name
# p.last_name = l      # set the Person's last name

# ...or this way
p = Person.new f, l

puts p.greet         # greet the Person
