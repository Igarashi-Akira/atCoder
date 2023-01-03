H, W = gets.chomp.split(" ").map(&:to_i)
row_dp = []
col_dp = []
A = []
B = Array.new(H, Array.new(W, 0))
H.times do |n|
  A[n] = gets.chomp.split(" ").map(&:to_i)
end

def row_sum(i)
  A[i].sum
end

def col_sum(j)
  col_sum = 0
  H.times do |h|
      col_sum += A[h][j]
  end
  col_sum
end

H.times do |i|
  W.times do |j|
    row_dp[i] ||= row_sum(i)
    col_dp[j] ||= col_sum(j)

    B[i][j] = row_dp[i] + col_dp[j] - A[i][j]
  end
  puts B[i].join(" ")
end