# Can you output your sequence
# such that each element is padded to a string
# with a size one greater than the number of digits in the last element that will be output?
# So if the biggest number you'll output is three digits,
# each element of the sequence is padded to four places.
# But if the last element is four digits, each element is padded to five places.

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
