arr = [1, 3, 5, 7, 9]

l = -1
r = arr.size

while l + 1 < r
  mid = l + (r - l) / 2
  if arr[mid] >= val
    r = mid
  else
    l = mid
  end
  [r, l]
end