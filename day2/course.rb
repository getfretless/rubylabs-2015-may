require 'pry'
require './student.rb'

class Course
  def initialize(course_name = nil, student_list = [])
    self.name = course_name
    self.students = student_list
    @errors = []
  end

  def filename
    "#{name}.txt"
  end

  def load
    return unless name

    begin
      file = File.open(filename, 'r')
      while (student_name = file.gets)
        add_student(student_name, true)
      end
      file.close
    rescue
    end
  end

  def save
    File.open(filename, 'a') do |file|
      students.each do |student|
        file.puts student unless student.persisted?
      end
    end
  end

  def name=(course_name)
    @name = course_name
  end

  def name
    @name
  end

  def students=(student_list)
    if student_list.respond_to? :each
      @students = student_list
      return @students
    else
      @students = []
      @errors.push 'Student list must be enumerable.'
    end
  end

  def welcome_students
    @students.each do |student|
      puts student.greet
    end
  end

  def errors
    @errors
  end

  def students
    @students
  end

  def add_student(student, persisted = false)
    if student.is_a? Student
      @students.push student
    elsif student.is_a? String
      if student.split.length > 1
        names = student.split
      @students.push Student.new(names.first, names.last, persisted)
      else
        @students.push Student.new(student, '', persisted)
      end
    end
    student
  end

  def print_enrollment
    students.each do |student|
      puts "* #{student}"
    end
  end
end
