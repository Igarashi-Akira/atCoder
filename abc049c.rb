S_arr = gets.chomp.split("")
n = S_arr.size - 1
def have_text?(arr, last, text)
  len = text.length
  start = last - (len -1)

  return false if start < 0
  arr[start..last] == text.split("")
end


while n != - 1 do
  if have_text?(S_arr, n, "dream") 
    n = n - 5
    next
  end

  if have_text?(S_arr, n, "dreamer") 
    n = n - 7
    next
  end

  if have_text?(S_arr, n, "erase") 
    n = n - 5
    next
  end
  
  if have_text?(S_arr, n, "eraser") 
    n = n - 6
    next
  end

  break
end

ret = n == -1 ? "YES" : "NO"
puts ret