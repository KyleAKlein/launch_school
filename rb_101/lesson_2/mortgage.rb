
#def monthly_interest(apr)
	#monthly_interest = apr / 12 
#end

# def monthly_interest(apr)
# 	apr * 12
# end

#def loan_months(apr_rate)
	#years * 12
#end

def valid_number?(num)
	num.to_i >= 0
end

puts ">> Hello! Welcome to the payment calculator. Do you need help? (Y or N)"
	answer = gets.chomp
	if answer == 'N'
		puts "Well, nevermind then."
	else
	end


amount = nil
loop do
	puts ">> What is the loan amount:"
	amount = gets.chomp
	if valid_number?(amount)
		break
	else
		puts "Try again."
	end
end

interest_rate = nil
loop do
	puts ">> What is the APR?"
	apr_rate = gets.chomp.to_f
	if valid_number?(interest_rate)
		break
	else
		puts "I need a valid number."
	end
end

years = ''
loop do
	puts ">> How many years is the loan?"
	years = gets.chomp
	if valid_number?(years)
		break
	else
		puts "I need a valid number."
	end
end

months = 12 * years.to_i
interest = apr_rate / 100 / 12 * 100
payment = ( loan_amount * apr_rate.to_f ) / months
puts "Your monthly payment will be #{payment}"
puts "Your monthly interest rate is #{interest}"
puts "Your loan is #{months} months long."


#monthly_payment = loan_amount * ( monthly_interest(1) / (1 - (1 + monthly_interest(1) ) ** (- loan_months(1) )))

#puts monthly_payment

# puts ">> Please tell me the Annual Percentage Rate:"
# puts ">> And how years is the loan?"
# puts ">> According to my calculations your monthly payment will be XXX"