=begin
6 kyu
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
Note: If the number is a multiple of both 3 and 5, only count it once.

Problem:
given an integer, take all the multplies of 3 or 5 and add these together.

input: integer
output: integer

Examples:
p solution(10) == 23
#nothing of note
p solution(20) == 78
#nothing of note
p solution(200) == 9168
#nothing of note

Data Structures:
array = []   *answer

Algorithm:
Step 1: Find multiples of 3 or 5.
  Step 1.a: iterate through every natural number up to given integer.
    #=> 1.upto(integer)
  Step 1.b: pass in block that finds multiples of 3 or 5
  #=> num % 3 == 0
  #=> num % 5 == 0
Step 2: push answer into array.
  #=> array << num
Step 3: add uniq array elements
  array.uniq.sum
Step 4: return answer

=end

def solution(i)
  array = []

  1.upto(i-1) do |num|
    if num % 3 == 0
      array << num
    elsif num % 5 == 0
      array << num
    end
  end

  answer = array.uniq.sum
  answer
end


p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168