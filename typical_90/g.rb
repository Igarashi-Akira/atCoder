N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i).sort
Q = gets.chomp.to_i
B = []
candidate = []
Q.times do |q|
  B[q] = gets.chomp.to_i
end

def min(a, b)
  a < b ? a : b
end

def human(a, b)
  return 10**10 if a.nil? || b.nil?
  (a - b).abs
end

def search(arr, val)
  l = 0
  r = arr.size
  while l + 1 < r
    mid = l + (r - l) / 2
    if arr[mid] >= val
      r = mid
    else
      l = mid
    end
  end
  [r, l]
end

B.each_with_index do |b, i|
  r, l = search(A, b)
  candidate[i] = min(human(A[r], b), human(A[l], b))
end

puts candidate