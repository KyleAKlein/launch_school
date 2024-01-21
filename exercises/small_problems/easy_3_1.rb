arr = []

puts "==> Enter the 1st number:"
arr << gets.chomp.to_i
puts "==> Enter the 2nd number:"
arr << gets.chomp.to_i
puts "==> Enter the 3rd number:"
arr << gets.chomp.to_i
puts "==> Enter the 4th number:"
arr << gets.chomp.to_i
puts "==> Enter the 5th number:"
arr << gets.chomp.to_i
puts "==> Enter the last number:"
last_num = gets.chomp.to_i

if arr.include?(last_num)
	puts "#{last_num} is included in the #{arr}."
else
	puts "#{last_num} is not included in the #{arr}."
end


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].