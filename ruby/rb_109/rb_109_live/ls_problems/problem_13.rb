=begin
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1. 

For example:

Let's say you are given the array [1,2,3,4,3,2,1]:
Your method will return index 3, because at the 3rd position of the array, the sum of left side of the index [1,2,3] and the sum of the right side of the index [3,2,1] both equal 6.

Another one:
You are given the array [20,10,-80,10,10,15,35]
At index 0 the left is []
The right side is [10,-80,10,10,15,35]
They both are equal to 0 when added. (empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

find_even_index([1,2,3,4,3,2,1]) == 3
find_even_index([1, 100, 50, -51, 1, 1]) == 1
find_even_index([1, 2, 3, 4, 5, 6]) == -1
find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
find_even_index([20, 10, -80, 10, 10, 10, 15, 35]) == 0
find_even_index([10 ,-80, 10, 10, 15, 35, 20]) == 6
find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

Problem:
  Given an array of integers, find the index where the sum to the left of that index is equal to the sum to the right of the index.

Input: 
  array (of integers)
Output:
  integer (index)

Rules:
  Explicit:
    -If there is no index that would make this happen, return -1. 
    -empty arrays are equal to 0 in this problem
  Implicit:
    - Indexes start at 0.

Examples:
find_even_index([1,2,3,4,3,2,1]) == 3
  -Indexes start at 0.
find_even_index([1, 100, 50, -51, 1, 1]) == 1

find_even_index([1, 2, 3, 4, 5, 6]) == -1

find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3

find_even_index([20, 10, -80, 10, 10, 10, 15, 35]) == 0

find_even_index([10 ,-80, 10, 10, 15, 35, 20]) == 6

find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
  - negative numbers count

Data Structures:
first_half = []
second_half = []

Pseudo Code:
  Iterate through the array, each time, slicing it into two arrays. Sum these two arrays and compare the sums, if there are equal, return the index of where you sliced them. If not continue until the end. Return -1 if no index is found.

Algorithm:  
  Step1: Iterate through the array.
    - .each_with_index
  Step1a: if index is < 2
    -first_half = (0,0)
    -first_half = (0,1)
    -first_half = (0,2)
  Step2: Inside .each's block, slice the array at the index, creating two arrays (do not include index)
    - first_half = array.slice(0 ,index-1) second_half = array.slice(index+1, array.size-index)
  Step3: Compare the sums of these arrays
    - .sum
  Step4: When the sums are equal, return the index.
=end

def find_even_index(array)
  first_half = []
  second_half = []
 
  array.each_with_index do |num, index|
    if index == 0
      first_half = []
    else
      first_half = array.slice(0, index-1)
    end

    second_half = array.slice(index, array.size-index)
    
    # if first_half == nil || second_half == nil
    #   next
    # end
    p first_half
    p second_half
    if first_half.sum == second_half.sum
      
      # p index
      return index-1
    end
    p first_half.sum
    p second_half.sum
  end
  -1
end
# (0,0)(0,1)(0,2) #[]
# (0,7)    #[1,2,3,4,3,2,1]
# []
#[2,3,4,3,2,1]
# (1,string.size-index)
#[1]
#[3,4,3,2,1]

# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1, 100, 50, -51, 1, 1]) == 1
# p find_even_index([1, 2, 3, 4, 5, 6]) == -1
# p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
# p find_even_index([20, 10, -80, 10, 10, 10, 15, 35]) == 0
# p find_even_index([10 ,-80, 10, 10, 15, 35, 20]) == 6
# p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3


