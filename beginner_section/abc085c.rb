N, Y = gets.chomp.split(" ").map(&:to_i)
x = -1
y = -1
z = -1
sum = 0

0.upto(N) do |nx|
  x_val = nx * 10000
  break if x_val > Y || x > 0
  0.upto(N - nx) do |ny|
    nz = N - nx - ny
    y_val = ny * 5000
    z_val = nz * 1000
    sum = x_val + y_val + z_val
    if sum == Y
      x = nx
      y = ny
      z = nz
      break
    end
  end
end

puts "#{x} #{y} #{z}"