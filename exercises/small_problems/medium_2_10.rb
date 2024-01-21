=begin
Problem:
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Input: integer
Output: integer

Example:

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Data Structures:

Algorithm:
-1.upto(n)


=end

def sum_square_difference(i)
  numbers = 1.upto(i).to_a
  sum = numbers.sum
  sq = numbers.map do |x|
    x**2
  end
  sum_sq = sum**2
  sq_sum = sq.sum
  ans = sum_sq.to_i - sq_sum.to_i
  ans
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150