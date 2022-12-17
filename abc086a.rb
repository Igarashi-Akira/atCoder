a, b = gets.chomp.split(" ").map(&:to_i)
ret = (a * b).even? ? "Even" : "Odd"
puts ret