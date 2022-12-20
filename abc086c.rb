N = gets.chomp.to_i
d = []
d[0] = [0, 0, 0]
1.upto(N) do |n|
  d[n] = gets.chomp.split(" ").map(&:to_i)
end

def can_travel?(a, b)
  dx = (a[1] - b[1]).abs
  dy = (a[2] - b[2]).abs
  total = dx + dy
  t = b[0] -a[0]

  return false if t - total < 0
  (t - total).even?
end

result = "Yes"

1.upto(N) do |n|
  if !can_travel?(d[n-1], d[n])
    result = "No"
    break
  end
end

puts result