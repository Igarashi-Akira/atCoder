N = gets.chomp.to_i
return if N.odd?

def to_string(s)
  candidate = ""
  (N-1).downto(0) do |i|
    if (s & (1 << i) == 0)
      candidate += "("
    else
      candidate += ")"
    end
  end

  candidate
end

def hantei(s)
  sum = 0
  s.size.times do |j|
    if s[j] == "("
      sum += 1
    else
      sum -= 1
    end

    if sum < 0
      break
    end
  end

  sum == 0
end

0.upto(1 << N) do |n|
  text = to_string(n)

  puts text if hantei(text)
end