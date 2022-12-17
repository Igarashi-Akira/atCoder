a = gets.chomp.to_i
b, c = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
puts "#{a + b + c} #{s}"