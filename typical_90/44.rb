N, Q = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)
T = []
Q.times do |n|
  T[n] = gets.chomp.split(" ").map(&:to_i)
end

shift_times = 0

T.each_with_index do |t, i|
  x = (t[1] - shift_times - 1) % N
  y = (t[2] - shift_times - 1) % N
  if t[0] == 1
   A[x], A[y] = A[y], A[x] 
  elsif t[0] == 2
    shift_times += 1
  else
    puts A[x]
  end
end