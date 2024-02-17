puts "Enter the length of the room in meters:"
user_input = gets.chomp.to_i
puts "Enter the width of the room in meters:"
user_width = gets.chomp.to_i

def area_m(num1, num2)
	total = num1 * num2
	total
end

def area_f(num1, num2)
	total_s = num1 * num2 * 10.7639
	total_s
end

area = area_m(user_input, user_width)
area_b = area_f(user_input, user_width)

puts "The area of the room is #{area} square meters (#{area_b})."

#Note: 1 square meter == 10.7639 square feet