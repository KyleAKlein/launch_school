# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

=begin

Problem:
  Given an array of numbers, find out how many numbers are smaller than the given number and return it in an array.

Input: array
Output: array

Rules:
  Explicit:
    -When counting numbers only count unique values. (don't count multiple times)
  Implicit:
    -if there is only one element, it should return 0,

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
  -There should be at least 1 zero.
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
  -Both array sizes should be the same
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
  -if all numbers are the same then it should return all 0s
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]

p smaller_numbers_than_current([1]) == [0]
  -if there is only one element, it should return 0,

Data Structures:
  arrays
  uniq_copy = copy of array
  answer_array = []

Algorithm:
  *Step1:
    -make a copy of the array
  Step2:
    -iterate through the original collection, compare element to uniq_copy and count how many numbers are smaller than the element
  Step3:
    -place count inside answer_array
  Step4:
    -return answer_array
  *Alt_step: if uniq_array = 1 return 0

=end

# def smaller_numbers_than_current(array)
#   uniq_copy = array.uniq
#   answer_array = []
 
#   if uniq_copy.size == 1
#     return [0] * array.size
#   end

#   array.each do |num|
#     answer_array << uniq_copy.count do |x|
#       x < num
#     end
#   end

      
#   answer_array
# end

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]


