N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
alice = 0
bob = 0

sorted_a = a.sort.reverse

sorted_a.each_with_index do |num, index|
  if index.even?
    alice  += num
  else
    bob += num
  end
end

diff = alice - bob

puts diff