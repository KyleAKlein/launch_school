def leap_year?(num)
  if num % 4 != 0
    false
  elsif num % 4 == 0 && num % 100 != 0
    true
  elsif num % 100 == 0 && num % 400 == 0
    true
  elsif
    num % 100 == 0
    false
  else
    true
  end
end



p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true


# In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year 
# unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method that takes any year greater 
# than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

# P - Understanding the Problem:
# - Goal: understand what you're being asked to do
#   - Read the problem description
#   - Identify expected input and output
#   - Establish rules/requirements/define the boundaries of the problem
#   - Ask clarifying questions
#   - Take your time on this step!

# P
# -read.
# - expected input: year(integer)
# - output: Boolean (True or False, if digit is a leap year)
# - rules: if year is divisible by 4 then, its a leap year, unless also divisible by 100.
# -        if divisible by 100 then it is not a leap year unless the year is evenly divisible by 400.
# -       assume year is greater than 0.
# -      return boolean.
# - Questions:
# -          No questions.




# E - Examples and Test Cases:
# - Goal: further expand and clarify understanding about what you're being asked to do 
#   - Use examples/test cases to confirm or refute assumptions made about the problem in the previous step

# E - test cases make sense

# D - Data Structures:
# - Goal: begin to think logically about the problem
#   - What data structures could we use to solve this problem?
#     - What does our data look like when we get it? (input)
#     - What does our data look like when we return it? (output?)
#     - What does our data need to look like in the intermediate steps?

# D -
#       computational formulas. ternary operation
#       input: positive integer
#       output: true/false
#       

# A - Algorithm:
# - Goal: write out high level steps to solve the given problem
#   - A logical sequence of steps for accomplishing a task/objective
#   - Start high level, but make sure you've thought through the difficult parts
#   - Stay programming-language-agnostic
#   - Focus on finding a solution that works
#   - Can create substeps for different parts or separate concerns into a helper method
#   - You can (and should) revisit your algorithm during the implementation stage if you need to update it
#   - Before moving onto implementing the algorithm, check it against a few test cases

# A-
#     1. Take integer, if dividing by 4, leaves no remainder than, it is a leap year.
#     2. if diving by 100 equals zero then it is not a leap year unless dividing by 400 leaves no remainder.
#    
#

# C - Implementing a Solution in Code:
# - Goal: translate the algorithm into your programming language of choice
#   - Code with intent. Avoid hack and slash 
# - TEST FREQUENTLY
#   - Use the REPL or run your code as a file
#   - When testing your code, always have an idea in place of what you're expecting
#   - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code



