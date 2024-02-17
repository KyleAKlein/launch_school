def century(num)
  str = ''

  if num.to_s.chars.last == 0
    cen = num / 100
	else
    cen = (num + 100) / 100
  end
  str.prepend(helper_method(cen))
  str.prepend(cen.to_s)
end

def helper_method(num)
  if [11, 12, 13, 112, 113, 114].include?(num)
    'th'
  else
    case num.to_s.split('').last.to_i
    when 1
      'st'
    when 2
      'nd'
    when 3
      'rd'
    else
      'th'
    end
  end
end

p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# Write a method that takes a year as input and returns the century. The return value should be a 
# string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# P - Understanding the Problem:
# - Goal: understand what you're being asked to do
#   - Read the problem description
#   - Identify expected input and output
#   - Establish rules/requirements/define the boundaries of the problem
#   - Ask clarifying questions
#   - Take your time on this step!

# I am being asked to create a method that takes a number (year) and changes it to the "century" it equates to.
# Read.
# Input: Integer (number)
# Output: String
#         Begins with century number, ends with st, nd, rd, or th as appropriate for that number.
# requirements:
#         method definition name is: century( ) <-- takes an argument thats an integer
#         cutoffs are 01-100 per century. (e.g 1901-2000 = 20th century)
# Rules:
#         must end output with st, nd, rd, or th.
# Questions:
#        1. what if the number is less than 100?  
#        2.  what if the number is less than 0?  
#        3.  What if the number is greater than 10,000?
#        4.   what if the number ends in 0?
#        5. What is the number is a teen? (11, 12, 13, 14, 15)


# E - Examples and Test Cases:
# - Goal: further expand and clarify understanding about what you're being asked to do 
#   - Use examples/test cases to confirm or refute assumptions made about the problem in the previous step
#         Q1: per given example, numbers less than 100 will be 1st century.
#         Q2: no clarification on less than 0. Will assume no negative numbers.
#         Q3: example given of 10103 = 102nd century.
#         Q4: if it ends in zero then the century is the number divided by 100. and must be followed by "th".
#         Q5: If number is a teen, then the suffix must be "th". e.g "10th, 11th, 12th, 13th, 14th, 15th"
#
#       Examples:  01-100 1st century
#                 101-200 2nd century
#                 201-300 3rd century
#                 301-400 4th century
#                 1101-1200 12th century
#                 1202-1300 13th century
#                 2001-2100 21st century
#                 3201-3300 33rd century
#                 3901-4000 40th cenutry 

# D - Data Structures:
# - Goal: begin to think logically about the problem
# - What data structures could we use to solve this problem?
#   - What does our data look like when we get it? (input)
#   - What does our data look like when we return it? (output?)
#   - What does our data need to look like in the intermediate steps?
#     
#     Data Structures Needed: Strings
#     Input: Integer
#     Output: String with suffix
#     In between: Integer needs to be computed, then added to a string.
#     for suffix: use a case to determine which suffix

# A - Algorithm:
# - Goal: write out high level steps to solve the given problem
# - A logical sequence of steps for accomplishing a task/objective
# - Start high level, but make sure you've thought through the difficult parts
# - Stay programming-language-agnostic
# - Focus on finding a solution that works
# - Can create substeps for different parts or separate concerns into a helper method
# - You can (and should) revisit your algorithm during the implementation stage if you need to update it
# - Before moving onto implementing the algorithm, check it against a few test cases

#     Step 1: Take integer add 100 then divide by 100 and this will equal the century.
#     Step 2: If century ends in zero, then integer / 100 will be the century.
#     Step 3: If integer divded by 100 equals float, drop decimals.
#     Step 4: create empty string.
#     Step 5: push computed number into empty string.
#     Step 6: helper method: (case)
#             if number ends in 1, add "st", if 2 add "nd", if 3 add "rd", if 4 or more add "th".
#             exception: if number is a teen, it ends with th. ends with zero its "th".
#     Step 7: push suffix to string
#     Step 8: print string

# C - Implementing a Solution in Code:
# - Goal: translate the algorithm into your programming language of choice
#   - Code with intent. Avoid hack and slash 
# - TEST FREQUENTLY
#   - Use the REPL or run your code as a file
#   - When testing your code, always have an idea in place of what you're expecting
#   - If you find that your algorithm doesn't work, return there FIRST if needed and THEN fix your code
