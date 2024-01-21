def string_to_signed_integer(str)
  array = []

  result = str.split('').each { |num| array << num.to_i }
  value = 0
  array.each { |digit| value = 10 * value + digit}

  if str[0] == '+'   
    value
  elsif str[0] == '-'
    value = -(value)
  end
  p array
  p value
end

# def string_to_integer(str)
#   array = []

#   result = str.split('').each { |num| array << num.to_i }
#   value = 0
#   array.each { |digit| value = 10 * value + digit}

#   if str[0] == '+'   
#     value
#   elsif str[0] == '-'
#     value = -(value)
#   end
#   p array
#   p value

# end

# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100