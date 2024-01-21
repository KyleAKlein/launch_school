=begin 
5 kyu
Create a method called "power" that takes two integers and returns the value of the first argument raised to the power of the second. Return nil if the second argument is negative.
Note: The ** operator has been disabled.

Examples:
p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil

=end

def power(i, num)
   if num < 0
    return nil
   elsif num == 0 
    return 1
   end
  
  answer = 1

  if i > 1
    string = i.to_s*num
    array = string.chars.map(&:to_i)
  else
    string = i.abs.to_s*num
    array = string.chars.map(&:to_i)
  end

  array.each do |x|
    answer *= x
  end
  
  if i < 0 && num.odd?
    answer *= -1
  end

  answer
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil