def multisum(num)
  arr = []
  range = (1..num).to_a
  range.select do |n|
    if multi_3?(n)
    arr << n
    elsif multi_5?(n)
    arr << n
    end
  end
    ans = arr.sum
    ans
end

def multi_3?(num)
  num % 3 == 0
end

def multi_5?(num)
  num % 5 == 0
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


# Write a method that searches for all multiples of 3 or 5 that lie between 1 and 
# some other number, and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# P - Understanding the Problem:
# - Goal: understand what you're being asked to do
#   - Read the problem description
#   - Identify expected input and output
#   - Establish rules/requirements/define the boundaries of the problem
#   - Ask clarifying questions
#   - Take your time on this step!

# E - Examples and Test Cases:
# - Goal: further expand and clarify understanding about what you're being asked to do 
#   - Use examples/test cases to confirm or refute assumptions made about the problem in the previous step

# D - Data Structures:
# - Goal: begin to think logically about the problem
#   - What data structures could we use to solve this problem?
#     - What does our data look like when we get it? (input)
#     - What does our data look like when we return it? (output?)
#     - What does our data need to look like in the intermediate steps?

# A - Algorithm:
# - Goal: write out high level steps to solve the given problem
#   - A logical sequence of steps for accomplishing a task/objective
#   - Start high level, but make sure you've thought through the difficult parts
#   - Stay programming-language-agnostic
#   - Focus on finding a solution that works
#   - Can create substeps for different parts or separate concerns into a helper method
#   - You can (and should) revisit your algorithm during the implementation stage if you need to update it
#   - Before moving onto implementing the algorithm, check it against a few test cases

# C - Implementing a Solution in Code:
# - Goal: translate the algorithm into your programming language of choice
#   - Code with intent. Avoid hack and slash 
# - TEST FREQUENTLY
#   - Use the REPL or run your code as a file
#   - When testing your code, always have an idea in place of what you're expecting
#   - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code
