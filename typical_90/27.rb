N = gets.chomp.to_i
S = []
N.times do |n|
  S[n] = gets.chomp
end
ans = []
yes = []

def binary(arr, val)
  l = -1
  r = arr.size
  while l + 1 < r
    mid = l + (r - l) / 2
    if arr[mid] >= val
      r = mid
    else
      l = mid
    end
  end
  r
end

N.times do |n|
  s = S[n]
  m = binary(yes, s)
  if s != yes[m]
    if m < 0
      yes.insert(0, s)
    else
      yes.insert(m, s)
    end
    ans.push(n + 1)
  end
end

puts ans