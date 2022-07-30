=begin
Find all pairs
You are given array of integers, your task will be to count all pairs in that array and return their count.
Notes:
Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5
[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

Problem:
Given an array of integers, count all the pairs in that array and return the final count.

Input: array (of integers)
Output: integer

Example: edge cases
-if empty array
  => 0
-if pairs occur more than one, count each time a pair occurs regardless of integer value.

-What if array contains non-integer values?
  -Assume all values are integers.
-What is array contains nested arrays?
  -Assume no nested arrays.
-What if odd number of specific integer?
  -Only increase count for even pairs

Data Structures:
-Array
-Rolling count (variable = interger)

Algorithm:
Step 1: Iterate through array and assign current value variable
  => current_val = 0
Step 2: count number of matches for current value variable
  => increase rolling count by number of matches divide by 2
Step 3: return count

=end

def pairs(array)
  final_count = []
  rolling_count = 0
  current_value = 0

  array.sort.uniq.each do |num|
    current_value = num
    final_count << array.count(current_value) / 2
  end

  final_count.sum
end

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0