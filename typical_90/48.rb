N, K = gets.chomp.split(" ").map(&:to_i)
A, B, D = [], [], []
N.times do |n|
  A[n], B[n] = gets.chomp.split(" ").map(&:to_i)
  D[n] = A[n] - B[n]
end

sorted_arr = (B + D).sort.reverse

puts sorted_arr[0..K-1].sum