=begin
6 kyu
Task
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.
Example
For n = 152, the output should be 52;
For n = 1001, the output should be 101.
Input/Output
[input] integer n
Constraints: 10 ≤ n ≤ 1000000.
[output] an integer
=end

def delete_digit(i)
  array = i.digits.reverse
  num = 0
  dup = array.dup
  array.each_with_index do |n, idx|
    dup.delete_at(idx)
    p dup.join(' ')
    p array
  end

end

p delete_digit(152) == 52
# p delete_digit(1001) == 101
# p delete_digit(10) == 1