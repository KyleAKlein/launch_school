=begin

Problem # 1

Difficulty: 6 kyu or level 3

URL: https://www.codewars.com/kata/514b92a657cdc65150000006/solutions/ruby

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).
Note: If the number is a multiple of both 3 and 5, only count it once.

Problem:
  Find all the numbers that are multiples of 3 or 5 below the number passed in. And then return the sum of all of these numbers.

Input:
  integer
Output:
  integer

Rules:
  Explicit:
    -If a number is a multiple of both 3 and 5, only count it once.
  Implicit:
    -

Examples:
  test(10, 23)
  test(20, 78)
  test(200, 9168)

Data Structures:
  numbers = []

Algorithm:
  Step1:
    Iterate from 0 to given number.
  Step2:
    determine if number is divisible by 3 or 5, if yes add number to array.
  Step3:
    add sum of number, return total


# def solution(number)
#   array = []
#   1.upto(number-1) do |x|
#     if x % 3 == 0 || x % 5 == 0
#       array << x
#     end
#   end
#   array.sum
# end 

# Code Wars Top Answer
# def solution(number)
#   (1...number).select { |x| x%3==0 || x%5==0 }.inject(:+)

# end
  
# p solution(10) == 23
# p solution(20) == 78
# p solution(200) == 9168



Problem # 2

Create a function that takes a string as a parameter and does the following, in this order:

Replaces every letter with the letter following it in the alphabet (see note below)
Makes any vowels capital
Makes any consonants lower case
Note:

the alphabet should wrap around, so Z becomes A
in this kata, y isn't considered as a vowel.
So, for example the string "Cat30" would return "dbU30" (Cat30 --> Dbu30 --> dbU30)

Problem:
  Take a string and do the following
    -replace every letter with the letter following it in the alphbet
    -make any vowels capital
    -make any consonants lower case

Input:
  String
Output:
  String

Rules:
  Explicit:
    -make vowels capital
    -make consonants lower case
    -Alphabet wraps
  Implicit:
    -numbers stay the same.

Examples:

changer('Alice') == 'bmjdf'
    
changer('sponge1') == 'tqpOhf1'
    -numbers stay the same
changer('Hello World') == 'Ifmmp xpsmE'
    -capital vowels, space don't count
changer('dogs') == 'Epht'
changer('z') == 'A'

Algorithm:
  Step1: break string into characters
    # .chars
  Step2: iterate through chars
    # .each
  Step3: change to following alphabet letter.
  Step4: capitalize vowels, lower case constanants

  #

def changer(string)
  string.downcase.tr('a-z', 'b-za').tr('aeiou', 'AEIOU')
end

changer('sponge1') #== 'tqpOhf1'

Problem # 2


=begin
Write a function that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

The returned format must be correct in order to complete this challenge.
Don't forget the space after the closing parentheses!

Problem:
  Take an array of 10 digits and return a string of those numbers in the form of a phone number.

Input:
  Array
Output:
  String

Rules:
  Explicit:
    -Phone number must include parentheses
    -There must be a space after the second parentheses
    -There must be a dash betweeen digit #6 and #7

  Implicit:
    -

Examples:
  createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
    -

Pseudo:
  Create an empty string for the answer.
  Push in a open parentheses.
  Iterate through the array, keeping track of the index.
  push each digit into the Array
  after index 2, push in a close parentheses and a space
  after the 5th digit, push in a dash.

Algorithm:
  Step1: Create an empty string
    -answer_string = ''
  Step2: put in an open parentheses
    - << '('
  Step3: iterate through array, keep track of index.
    - each_with_index
  Step4: after index 2, close parentheses and space
    - << ') '
  Step5: after 5th digit, push in dash
    - << '-'

Errors:
  -random output
    Solution: forgot to change integer to string, before pushing integer into string.

    
=end

def createPhoneNumber(array)
  answer_string = ''
  answer_string << '('

  array.each_with_index do |num, index|
    if index == 2
      answer_string << num.to_s
      answer_string << ') '
    elsif index == 5
      answer_string << num.to_s
      answer_string << '-'
    else
      answer_string << num.to_s
    end
  end

  p answer_string
end


p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"

=end