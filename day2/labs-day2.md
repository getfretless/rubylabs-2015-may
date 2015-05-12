# Day 2

## Lab 7

* Create a class called 'Course'. For example:
  my_course = Course.new

* Include a string (that can be set with an '=', and retrieved) to store a course name. For example:
  my_course.name = 'ruby'

* Include an Array (that can be set with an '=', and retrieved) to store enrolled Students. For example:
  my_course.students = ['Jennifer', 'Colin']

### Regular-sized Bonus Credit
* Write an executatble script proving that this works.

### Super Mega Bonus Credit
* Allow the name to optionally be set when the Course is created. For example:
  Course.new 'ruby'





## Lab 8

Modify Lab 7 to do the following:
* Add a method 'add_student' that adds one student at a time.
* Still allow the developer using the class to pass in each student as just a string.
* Add an instance method to Course called 'welcome' that greets each student.

### Nice enhancement
* Prompt the user to enter a student name.

### Mega bonus credit
* Let the user tell you how many students there are. Prompt him or her for that many names.

Hint: convert a string to an integer with `to_i`


### SERIOUSLY Mega Big Time Bonus Credit
* Split the student name into first and last names.
