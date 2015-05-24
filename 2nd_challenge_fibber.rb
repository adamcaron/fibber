# start with two elements: 0 and 1
# Add them together and, based on the sum, create a 3rd element at the end of the sequence
# Until the total # of elements == 15 (quantity)
# Print or puts all the elements, displaying them 5 elements per line.

quantity = 15

sequence = [0,1]
until sequence.count == quantity
  next_number = sequence.last(2).inject(:+)
  sequence << next_number
end

sequence[0..4].each do |number|
  print number.to_s.rjust(4, ' ')
end
print "\n"
sequence[5..9].each do |number|
  print number.to_s.rjust(4, ' ')
end
print "\n"
sequence[10..14].each do |number|
  print number.to_s.rjust(4, ' ')
end
