def send_to_underworld(name_of_underworld)
  person = 'Mario'
  puts "Now #{person} is in the overworld."
  yield person, name_of_underworld
  puts "Now #{person} is in the overworld."
end

send_to_underworld 'World 1-2' do |person, place|
  puts "Now #{person} is in the underworld, #{place}."
end

send_to_underworld 'World 4-2' do |person, place|
  puts "Now #{person} is in the underworld, #{place}."
end












# def send_to_underworld(name_of_underworld)
#   person = 'Mario'
#   puts "Now #{person} is in the overworld."
#   # do something (in only two more lines)
# end
#
# send_to_underworld 'World 1-2' do |person, place|
#   puts "Now #{person} is in the underworld, #{place}."
# end

# Call `send_to_underworld` one more time.


# =================================================
# Modify `send_to_underworld` as needed.
# Call the send_to_underworld method as many times as necessary, with the same block.
#
# Only include one line of code inside the block
# (i.e. between `do` and `end`)
#
# Should output the following:
#
# Now Mario is in the overworld.
# Now Mario is in the underworld, World 1-2.
# Now Mario is in the overworld.
# Now Mario is in the overworld.
# Now Mario is in the underworld, World 4-2.
# Now Mario is in the overworld.
