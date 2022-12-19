N = gets.chomp.to_i
d = []
N.times do |n|
  d[n] = gets.chomp.to_i
end

top_d = 2**100
sum = 0

sorted_d = d.sort.reverse

sorted_d.each do |d|
  if d < top_d
    top_d = d
    sum += 1
  end
end

puts sum