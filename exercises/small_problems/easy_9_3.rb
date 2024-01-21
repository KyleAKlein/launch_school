def negative(i)
  if i > 0
    return -i
  else
    i
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby