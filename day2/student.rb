require './person.rb'

class Student < Person
  def initialize(fname = 'John', lname = 'Doe', persisted = false)
    @persisted = persisted
    super(fname, lname)
  end

  def enroll(course)
    @courses = [] if @courses.nil?
    @courses.push course
  end

  def schedule
    @courses
  end

  def persisted=(has_been_written_to_file)
    @persisted = !!has_been_written_to_file
  end

  def persisted?
    @persisted
  end

  def greet
    if first_name == 'Sam'
      "Welcome back to the USA, #{first_name} #{last_name}."
    else
      "Welcome to class, #{first_name}."
    end
  end
end
