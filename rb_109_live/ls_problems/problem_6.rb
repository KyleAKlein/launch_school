=begin

Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

Example 1:
Input: 'abab'
Output: True

Example 2:
Input: 'aba'
Output: False

p repeated_substring_pattern("abab") == true
    -pattern repeated twice
p repeated_substring_pattern('aba') == false

p repeated_substing_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true

Problem:
  Given a string, determine if the letters are a substring that have been repeated, return true or false.

Input: string
Output: Boolean

Rules:
  Explicit: 
    -string consists of lowercase English letters only.
  Implicit:
    -pattern missing a letter returns false

Examples:
  p repeated_substring_pattern("abab") == true
    -pattern repeated twice
  p repeated_substring_pattern('aba') == false
    -pattern missing a letter returns false.
  p repeated_substing_pattern('aabaaba') == false

  p repeated_substring_pattern('abaababaab') == true
    -pattern is 'abaab' repeated twice
  p repeated_substring_pattern('abcabcabcabc') == true

Data Structures:
  
Algorithm:
  Step1: slice string into a substring.
    -make starting_num = 0, create variable for slice size = 0
  Step2: multiple substring upto the size of string
  Step3: if substring is equal to string return true, false otherwise.

Errors:
  -Wouldn't return false.
  -second upto method included the integer 1, so it returned true, because the substring of the entire length was equal to the string.
    -corrected to 2.upto

=end

def repeated_substring_pattern(string)
  1.upto(string.size) do |x|
    substring = string.slice(0, x)

    2.upto(string.size) do |multiple|
      if substring*multiple == string
        return true     
      else
        next
      end

    end
    
  end

  false
end


p repeated_substring_pattern("abab") == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true
