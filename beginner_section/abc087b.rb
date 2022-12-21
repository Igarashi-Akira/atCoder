A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

ret = 0
(C+1).times do |c|
      break if c*50 > X
  (B+1).times do |b|
      break if b*100 > X
    (A+1).times do |a|
      break if a*500 > X
      sum = c*50 + b*100 + a*500
      ret += 1 if sum == X
    end
  end
end

puts ret