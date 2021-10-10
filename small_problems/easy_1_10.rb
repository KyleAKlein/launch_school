def calculate_bonus(num, boo)
	if boo == true
		answer = num / 2
	else
		answer = 0
	end

	answer
end


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


# def calculate_bonus(salary, bonus)
# bonus ? (salary / 2) : 0
# end