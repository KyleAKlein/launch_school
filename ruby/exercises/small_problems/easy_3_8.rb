def palindrome?(str)
	if str == str.reverse
		true
	else 
		false
	end
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true