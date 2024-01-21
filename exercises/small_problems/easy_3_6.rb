def xor?(num_1, num_2)
	return true if num_1 == true && num_2 == false
	return true if num_1 == false && num_2 == true
	false
end



p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
