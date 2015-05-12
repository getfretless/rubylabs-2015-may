require './person.rb'

class Student < Person
  def enroll(course)
    @courses = [] if @courses.nil?
    @courses.push course
  end

  def schedule
    @courses
  end

  def greet
    if first_name == 'Sam'
      "Welcome back to the USA, #{first_name} #{last_name}."
    else
      "Welcome to class, #{first_name}."
    end
  end
end
