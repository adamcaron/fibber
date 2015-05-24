# Let's pad each number into a four-character string
# so we get clean output


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
