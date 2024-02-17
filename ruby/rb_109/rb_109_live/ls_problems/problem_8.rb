=begin
You have to create a method that takes a positive integer and returns the next biggest number formed by the same digits.

12 ==> 21
513 ==> 531
2017 ==> 2071

If no bigger number can be composed using those digits, return -1:

9 ==> -1
111 ==> -1
531 ==> -1

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798


Problem: Take an integer and return the next biggest num.

Input: Integer
Output: Integer

Rules:
  Explicit:
  Implicit:

Examples:
p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

Data Structures:

Algorithm:
  Step1:
    if it has only one digit, the digits are all the same or if the number is already the largest number return -1
  Step2:
      

=end

def next_bigger_num(num)
  if num.size == 1 || num.to_s.chars.uniq.size == 1
    return -1
  elsif num == num.to_s.chars.sort.reverse.join.to_i
    return -1
  end

  array_num = num.digits.reverse.join.to_i
  
  loop do 
    array_num += 1
    break if array_num.to_s.chars.sort.reverse.join.to_i == num.to_s.chars.sort.reverse.join.to_i
  end

  array_num

end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

