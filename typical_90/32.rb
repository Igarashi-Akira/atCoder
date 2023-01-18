require 'matrix'
N = gets.chomp.to_i
A = []
N.times do |n|
  A[n] = gets.chomp.split(" ").map(&:to_i)
end

M = gets.chomp.to_i
$dp = Matrix.zero(N+1)
M.times do |n|
  x, y = gets.chomp.split(" ").map(&:to_i)
  $dp[x, y] = 1
  $dp[y, x] = 1
end

arr = [*1..N]
ans = 10**10

arr.permutation do |junban|
  time = 0
  junban.each_with_index do |a, j|
    if j + 1 != junban.size
      if $dp[a, junban[j + 1]] == 1
        time = 10**10
        break
      end
    end

    time += A[a - 1][j]
  end

  ans = [ans, time].min
end

if ans == 10**10
  puts -1
  return
end

puts ans