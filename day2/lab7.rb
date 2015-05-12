#!/usr/bin/env ruby
require './course.rb'
my_course = Course.new 'ruby', ['Jack', 'Ed', 'Ron', 'Sam']

puts "Course enrollment for #{my_course.name}:"

my_course.students.each do |student|
  puts "* #{student}"
end
