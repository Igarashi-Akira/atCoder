N = gets.chomp.to_i
A, B, C = gets.chomp.split(" ").map(&:to_i)

L = 9999
ans = 9999

0.upto(l) do |x|
  0.upto(l - x) do |y|
    if (N - A*x - B*y) % C == 0
      z = (N - A*x - B*y) / C
      ans = [ans, x + y + z].min
    end
  end
end

puts ans