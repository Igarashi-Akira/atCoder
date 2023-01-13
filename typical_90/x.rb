N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
B = gets.chomp.split(" ").map(&:to_i)
diff = 0
ans = false

N.times do |n|
  diff += (A[n] - B[n]).abs
end

if K < diff
  puts "No"
  return
end

if K == diff
  puts "Yes"
  return
end

if (K - diff).even?
  puts "Yes"
  return
end

puts "No"