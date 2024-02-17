# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

# p least_common_char("Hello World") #== "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
# p least_common_char("Mississippi") #== "m"
# p least_common_char("Happy birthday!") #== ' '
# p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".


=begin

Problem:
  Take a string and return the letter that occurs least often.

Input:string
Output: string (single character)

Rules:
  -Explicit:
    -consider upper and lower case to be the same
  -Implicit:
    -space counts as a character
    -if char is cap, return lowercase

Examples:
p least_common_char("Hello World") #== "h"
  -if char is cap, return lowercase
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"

p least_common_char("Mississippi") #== "m"

p least_common_char("Happy birthday!") #== ' '
  -space counts as a character

p least_common_char("aaaaaAAAA") #== 'a'
  -case doesn't count.

Data Structures:
  answer = ''
  current_count = 10**10

Algorithm:
  Step1:
    -break string into individual characters. downcase
  Step2:
    -get count of each char.
    -if count is lower than current_count, answer = char
  step3:
    -return answer

=end


def least_common_char(string)
  current_count = 10**10
  answer = ''
  string_down = string.downcase
  string_down.split('').each do |char|
    if string_down.count(char) < current_count
      current_count = string_down.count(char)
      answer = char
    else
      next
    end

  end
  answer
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'