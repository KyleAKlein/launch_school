puts "What is the bill?"
bill = gets.chomp
bill = bill.to_f

puts "What is the tip percentage?"
tip = gets.chomp
tip = tip.to_f

tip_total = bill * (tip / 100)

bill_total = bill + tip_total

puts "The tip is $#{tip_total}"
puts "The total is $#{bill_total}"


#What is the bill? 200
#What is the tip percentage? 15

#The tip is $30.0
#The total is $230.0