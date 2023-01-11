A, B, C = gets.chomp.split(" ").map(&:to_i)
def cut_num(max, l)
  (l/max) -1
end

max = A.gcd(B).gcd(C)
ans = cut_num(max, A) + cut_num(max, B) + cut_num(max, C)
puts ans