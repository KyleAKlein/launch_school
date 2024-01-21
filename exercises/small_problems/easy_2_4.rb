puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

r_age = 2016 + (retire-age)

l_age = retire- age

puts "It's 2016. You will retire in #{r_age}. You only have #{l_age} years of work to go!"


#What is your age? 30
#At what age would you like to retire? 70

#It's 2016. You will retire in 2056.
#You have only 40 years of work to go!

#LS answer
#print 'What is your age? '
# current_age = gets.to_i

# print 'At what age would you like to retire? '
# retirement_age = gets.to_i

# current_year = Time.now.year
# work_years_to_go = retirement_age - current_age
# retirement_year = current_year + work_years_to_go

# puts "It's #{current_year}. You will retire in #{retirement_year}. "
# puts  "You have only #{work_years_to_go} years of work to go!"