def compute_sum(number)
	total = 0
	1.upto(number) { |value| total += value }
	total
end

def compute_product(number)
	total = 1
	1.upto(number) { |value| total *= value }
	total
end

puts ">> Please enter an integer greater than 0:"
number = gets.chomp.to_i

puts ">> Enter 's' to compute sum, 'p' to compute product."
operation = gets.chomp

if operation == 's'
	sum = compute_sum(number)
	puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
	product = compute_product(number)
	puts "The product of the integers between 1 and #{number} is #{product}."
else
	puts "Oops. Unknown operation."
end



# puts ">> Please enter an integer greater than 0:"
# user_input = gets.chomp.to_i
# puts "Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp.to_s


# name = "sum" if choice == 's'
# name = "product" if choice == 'p'

# def calculate(num1, word)
# 	answer = (1..num1).to_a.sum if word == 's'
# end

# calculate(choice, user_input)

# answer_1 = calculate.to_i

# puts "The #{name} of the integers between 1 and #{user_input} is #{answer_1}."

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.