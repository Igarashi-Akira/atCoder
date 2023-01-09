require 'matrix'
require "bigdecimal"
T = gets.chomp.to_i
L, X, Y = gets.chomp.split(" ")
Q = gets.chomp.to_i
E = []
Q.times do |q|
  E[q] = gets.chomp.to_i
end

pi = BigDecimal(Math::PI.to_s)

E.each do |t|
  theta = BigDecimal(t) * BigDecimal(2) * pi / BigDecimal(T)
  sin = BigDecimal(Math.sin(theta).to_s)
  cos = BigDecimal(Math.cos(theta).to_s)
  r = BigDecimal(L)/BigDecimal(2)
  o = BigDecimal(0)

  s = Vector[BigDecimal(X), BigDecimal(Y), o]
  x = Vector[o, - r * sin, r * (BigDecimal(1) - cos)]
  p = Vector[o, - r * sin, o]

  ans = (x - s).angle_with(p - s) / pi * BigDecimal("180")
  puts sprintf("%.14f", ans) 
end