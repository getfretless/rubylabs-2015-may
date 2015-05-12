def do_it(&block)
  puts 'I am in do_it'
  yield 'Chinese food'
  yield 'more food'
end

arr = ['Piata', 'Twammiches', 'bbq?']
puts "Before the block =================="
puts arr

do_it do |thing_to_add|
  arr.push thing_to_add
  z = 'mystring eh'

  puts "\n\nInside the block ========================="
  puts arr
end

puts "\n\nAfter the block ============================"
puts arr
puts "Is z defined? #{(defined? z) ? 'yep' : 'nope'}"
