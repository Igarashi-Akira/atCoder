S = gets.chomp.split("")
# S = "((a)ba)".split("")
stack = []
box = ""
result = "Yes"

S.each_with_index do |s, i|
  if s == "("
    stack.push("")
    next
  end

  if s == ")"
    box.delete_suffix!(stack.last)
    stack.pop
    next
  end

  if box.include?(s)
    puts "No"
    return
  else
    if stack.last.nil?
      stack[0] = s
    else
      stack.last.concat(s) 
    end
    
    box.concat(s)
  end
end

puts result