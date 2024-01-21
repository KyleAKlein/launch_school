# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:


# The tests above should print "true".

=begin 

Problem:
  Take an array of integers and return the minimum sum of 5 consecutive numbers. If the array contains fewer than 5 elements, return nil.

Input: array
Output: integer

Rules:
  Explicit:
    -If the array contains fewer than 5 elements, return nil.
  Implicit:
    -greatest negative is minimum sum

Examples:
  p minimum_sum([1, 2, 3, 4]) == nil
    -returns nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
    -normal
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
    -
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
  -negative numbers count as the greatest negative.

Data Structures:
  array
  answer = 10**10

Algorithm:
  Step1:
    if array size is less than 5 return a nil.
  Step2:
    slice the array into an array with 5 elements. move the starting point one element each time.
  Step3:
      if sum of sliced_arr is less than answer. make sum the new answer.


=end

def minimum_sum(arr)
  if arr.size < 5
    return nil
  end

  answer = 10**10
  start = 0
  
  (arr.size-4).times do 
    total = arr.slice(start, 5).sum
    if total < answer
      answer = total
    end  
    
    start += 1
    end

  answer
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10