N = gets.chomp.to_i
C = []
P = []
N.times do |n|
  C[n], P[n] = gets.chomp.split(" ").map(&:to_i)
end

Q = gets.chomp.to_i
L = []
R = []
Q.times do |q|
  L[q], R[q] = gets.chomp.split(" ").map(&:to_i)
end

SA = []
SB = []
N.times do |i|
  if C[i] == 1
    SA[i] = (SA[i-1] || 0) + P[i]
    SB[i] = (SB[i-1] || 0)
  else
    SA[i] = (SA[i-1] || 0)
    SB[i] = (SB[i-1] || 0) + P[i]
  end
end

A = []
B = []
Q.times do |q|
  l = L[q] - 2
  r = R[q] - 1
  if (l < 0)
    A[q] = SA[r]
    B[q] = SB[r]
  else
    A[q] = SA[r] - SA[l]
    B[q] = SB[r] - SB[l]
  end
  puts "#{A[q]} #{B[q]}"
end