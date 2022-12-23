N = gets.chomp.to_i
S = gets.chomp.split("").map

def to_dot(string)
  return string if string != ","

  string = "."

  string
end

def surrounded?(i)
  i.odd?
end

double_quote_num = 0

V = S.map do |s, i|
  if s == "\""
    double_quote_num += 1
  end

  if !surrounded?(double_quote_num)
    s = to_dot(s)
  end

  s
end

result = V.join("")

puts result