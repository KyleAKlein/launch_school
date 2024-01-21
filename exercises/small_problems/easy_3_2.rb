puts "==> Enter the first number:"
num_1 = gets.chomp.to_i

puts "==> Enter the second number:"
num_2 = gets.chomp.to_i

sum = num_1 + num_2
minus = num_1 - num_2
product = num_1 * num_2
divide = num_1 / num_2
remainder = num_1 % num_2
expo = num_1 ** num_2

puts "#{num_1} + #{num_2} = #{sum}"
puts "#{num_1} - #{num_2} = #{minus}"
puts "#{num_1} * #{num_2} = #{product}"
puts "#{num_1} / #{num_2} = #{divide}"
puts "#{num_1} % #{num_2} = #{remainder}"
puts "#{num_1} ** #{num_2} = #{expo}"

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103