K = gets.chomp.to_i
alphabets = ("A".."Z").to_a

result = ""

1.upto(K) do |k|
  result += alphabets[k-1]
end

puts result