require 'pry'
# Example 1

puts "Example 1 =============================="

def gimme_something(str)
  puts str
  yield 'breakfast' if block_given?
  puts str
  yield 'lunch' if block_given?
end


gimme_something('Yo') do |something|
  puts "Here's #{something}!"
end




# Example 2

puts "\nExample 2 =============================="

def gimme_something(str, &block)
  puts str
  block.call 'breakfast'
  puts str
  block.call 'lunch'
end


gimme_something('Yo') do |something|
  puts "Here's #{something}!"
end

# Works just as well
# def gimme_something(str, &do_things_with_something)
#   puts str
#   do_things_with_something.call 'breakfast'
#   puts str
#   do_things_with_something.call 'lunch'
# end


gimme_something('Yo') do |something|
  puts "Here's #{something}!"
end


#gimme_something('Hey')
#will attempt to do nil.call




puts "\nExample 3 =============================="

def gimme_something(str)
  puts str
  yield
  puts str
  yield 'breakfast' if block_given?
  puts str
  yield('lunch', 'dinner') if block_given?
end


gimme_something('Yo') do |something, something_else|
  puts "Here's #{something}. There's #{something_else}!"
end
















puts "\nExample 4 =============================="

def gimme_something(str, &block)
  puts str
  block.call 'breakfast', 'lunch'
  puts str
end

gimme_something('Yo') do |something, something_else, and_then_some|
  puts "Here's #{something}. There's #{something_else} and #{and_then_some}!"
end





puts "\nExample 5 =============================="
myproc = Proc.new do |something, something_else, and_then_some|
  puts "Here's #{something}. There's #{something_else} and #{and_then_some}!"
end

gimme_something('Yao') do |x, y, z|
  myproc.call(x,y,z)
end








def gimme_something(str, &block)
  puts str
  block.call 'breakfast', 'lunch'
  puts str
end

gimme_something('Yo') do |something, something_else, and_then_some|
  puts "Here's #{something}. There's #{something_else} and #{and_then_some}!"
end





puts "\nExample 6 =============================="

myproc = Proc.new do |something, something_else, and_then_some|
  puts "Here's #{something}. There's #{something_else} and #{and_then_some}!"
end

def gimme_something(str, theproc = Proc.new)
  puts str
  yield('fish', 'chips', 'vinegar')
  theproc.call 'breakfast', 'lunch'
  puts str
end

gimme_something('Yao') do |x, y, z|
  myproc.call(x,y,z)
end
