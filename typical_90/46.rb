A = Array.new(46, 0)
B = Array.new(46, 0)
C = Array.new(46, 0)

N = gets.chomp.to_i
 gets.chomp.split(" ").map do |v|
  A[v.to_i % 46] += 1
end

gets.chomp.split(" ").map do |v|
  B[v.to_i % 46] += 1
end

gets.chomp.split(" ").map do |v|
  C[v.to_i % 46] += 1
end

ans = 0
# puts A

46.times do |a|
  46.times do |b|
    46.times do |c|
      if (a + b + c) % 46 == 0 
        ans = ans + (A[a] * B[b] *C[c])
      end
    end
  end
end

puts ans