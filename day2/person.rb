class Person
  def initialize(fname = 'John', lname = 'Doe')
    self.first_name = fname
    self.last_name = lname
  end

  def to_s
    full_name
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def greet
    "Hello, #{self}."
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
