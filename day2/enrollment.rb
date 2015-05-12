#!/usr/bin/env ruby
require './course'

if ARGV.empty?
  puts "Give me a file name."
  exit
end

course_name = ARGV.first
ARGV.clear

course = Course.new course_name
course.load

print "How many students are you adding: "
number_of_students = gets.chomp.to_i

number_of_students.times do
  print "Enter a student's name: "
  name = gets.chomp

  course.add_student name
end

course.save
