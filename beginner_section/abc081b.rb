N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
vp = 2**10

def cmin(x, y)
  return y if x > y
  x
end

def division_times(v)
  time = 0
  remainder = 0
  quotient = v

  while remainder.to_i == 0 do
    time = time + 1
    quotient, remainder = quotient.divmod(2)
  end
 
  time - 1
end

a.each do |v|
  vp = cmin(vp, division_times(v) )
end

puts vp