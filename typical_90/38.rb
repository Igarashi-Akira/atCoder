A, B = gets.chomp.split(" ").map(&:to_i)

a = A.lcm(B)
ans = a > 10**18 ? "Large" : a

puts ans