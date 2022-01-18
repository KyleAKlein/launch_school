string = "ALL CAPS"
arr =[]
string.chars.each_with_index do |x, i|
  if i % 2 == 0
    arr << x.upcase
  else
    arr << x.downcase
  end
end
p arr.join