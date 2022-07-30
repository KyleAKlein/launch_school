# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# # Examples:

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

=begin

Problem:
  Take an array of integers and return two numbers that are closest in value.

Input: array of integers
Ouput: array of two integers

Rules:
  Explicit:
    -
  Implicit:
    -if there's two other numbers with the same difference choose the first pair.

Examples:
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
  -difference of 4
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
  -difference of 2
p closest_numbers([12, 7, 17]) == [12, 7]
  -if theres two numbers with the same difference return the first pair.

Data Structures:
answer_arr = []
lower_num = 10**10

Algorithm:  
  Step1:
    -iterate through array and minus it from every number in array.
  Step2:
    -if the aboslute of the difference is less than the lowest number 
    -put the pair of numbers into the answer arr
  Step3:
    -return the answer_arr


=end

def closest_numbers(arr)
  answer_arr = []
  lower_num = 10**10
  arr.each do |first_num|
    arr.each do |second_num|
      if first_num == second_num
        next
      elsif (first_num - second_num).abs < lower_num
        # p (first_num - second_num).abs
        lower_num = (first_num - second_num).abs
        answer_arr = [first_num, second_num]
      end
    end
    # lower_num = 10**10
  end
  answer_arr
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]


=begin
Notes
17 minutes

=End