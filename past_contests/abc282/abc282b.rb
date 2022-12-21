N, M = gets.chomp.split(" ").map(&:to_i)
S = []
N.times do |n|
  S[n] = gets.chomp.split("")
end

result = 0

def is_solve?(sx, sy)
  result = true
  M.times do |m|
     if sx[m] == "x" && sy[m] == "x"
        result = false
        break
     end
  end
  result
end

1.upto(N) do |x|
  (x+1).upto(N) do |y|
    result +=1 if is_solve?(S[x - 1], S[y - 1])
  end
end

puts result