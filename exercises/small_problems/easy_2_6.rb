# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

def odd(num)
	num.to_a.each {|element| puts element if element.odd? }
end

odd(1..99)