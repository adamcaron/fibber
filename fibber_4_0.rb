quantity = 100
sequence = [0, 1]

sequence << sequence.last(2).inject(:+) until sequence.count == quantity

until sequence.empty?
  5.times do
    padding = sequence[-1].to_s.length + 1
    print sequence.shift.to_s.rjust(padding, ' ')
  end
  puts "\n"
end