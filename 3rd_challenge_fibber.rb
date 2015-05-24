# Can you output your sequence
# such that each element is padded to a string
# with a size one greater than the number of digits in the last element that will be output?
# So if the biggest number you'll output is three digits,
# each element of the sequence is padded to four places.
# But if the last element is four digits, each element is padded to five places.


quantity = 150

sequence = [0, 1]

until sequence.count == quantity
  next_number = sequence.last(2).inject(:+)
  sequence << next_number
end

# Destructive method: manipulates the array using '.shift' until the array is empty
until sequence.empty?
  5.times do
    padding = sequence[-1].to_s.length + 1
    print sequence.shift.to_s.rjust(padding, ' ')
  end
  puts "\n"
end