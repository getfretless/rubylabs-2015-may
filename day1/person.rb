class Person
  def initialize(fname = 'John', lname = 'Doe')
    self.first_name = fname
    self.last_name = lname
  end

  def greet
    "Hello, #{first_name} #{last_name}."
  end

  def first_name=(str)
    @first_name = str
  end

  def first_name
    @first_name
  end

  def last_name=(str)
    @last_name = str
  end

  def last_name
    @last_name
  end
end
