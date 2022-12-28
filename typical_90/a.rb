N, L = gets.chomp.split(" ").map(&:to_i)
K = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

def is_match?(x)
  pre = 0
  count = 0
  
  A.each do |a|
    if a - pre >= x && L - a >= x
      count += 1
      pre = a
    end
  end

  count >= K
end

def binary_search(r, l)
  while r - l > 1 do 
    mid = l + (r - l)/2
    if is_match?(mid)
      l = mid
    else
      r = mid
    end
  end
  l
end

puts binary_search(L, 0)