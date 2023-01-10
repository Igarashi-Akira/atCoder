require "bigdecimal"
a, b, c = gets.chomp.split(" ").map do |x|
  BigDecimal(x)
end

ans = 1 < (c**b)/a ? "Yes" : "No"

puts ans

