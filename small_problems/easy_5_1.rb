def ascii_value(str)
  sum = 0

  str.split('').each do |n|
    sum += n.ord
  end
  sum 
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0