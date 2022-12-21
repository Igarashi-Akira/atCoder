N, A, B = gets.chomp.split(" ").map(&:to_i)
ret = 0
sum = 0

def find_sum_of_digits(n)
  sum = 0
  while n > 0 do
    sum = sum + (n % 10)
    n /= 10
  end
  sum
end


1.upto(N) do |n|
  sum = find_sum_of_digits(n)
  if A <= sum && sum <= B
    ret = ret + n
  end
end

puts ret
