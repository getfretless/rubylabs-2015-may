#!/usr/bin/env ruby
require './course'

binding.pry

course = Course.new :ruby

print "How many students are there: "
number_of_students = gets.chomp.to_i

number_of_students.times do
  print "Enter a student's name: "
  name = gets.chomp

  course.add_student name
end

course.print_enrollment
course.welcome_students
