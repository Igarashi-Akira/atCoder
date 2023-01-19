H, W = gets.chomp.split(" ").map(&:to_i)

if H == 1 || W == 1
  puts H * W
  return
end

h = H.even? ? H : (H + 1)
w = W.even? ? W : (W + 1)
S = h * w
ans = S / 4
puts ans