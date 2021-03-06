quantity = 100
sequence = [0, 1]

until sequence.count == quantity
  next_number = sequence.last(2).inject(:+)
  sequence << next_number
end

until sequence.empty?
  5.times do
    padding = sequence[-1].to_s.length + 1
    print sequence.shift.to_s.rjust(padding, ' ')
  end
  puts "\n"
end