=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise return false.

Example:
str1 is 'rkqodlw' and str 2 is 'world' the output should return true.

str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.

str1 is 'katas' and str2 is 'steak' should return false.

Only lower case letters will be used (a-z). No punctuation or digits will be included.

scramble('javaass', 'jjss') == false
scramble('rkqodlw', 'world') == true
scramble('cedewaraaossoqqyt', 'codewars') == true
scramble('katas', 'steak') == false
scramble('scriptjava', 'javascript') == true
scramble('scriptingjava, 'javascript') == true


Problem:
  Take two strings and if one of the strings contains all the letters of the other string return true, false otherwise

Input: 2 strings
Output: boolean

Rules:
  Explicit:
    -Only lower case letters will be used (a-z)
    -No punctuation of digits
  Implicit:
    -

Examples:
scramble('javaass', 'jjss') == false
  -
scramble('rkqodlw', 'world') == true
  -letter can be in any order
scramble('cedewaraaossoqqyt', 'codewars') == true
scramble('katas', 'steak') == false
scramble('scriptjava', 'javascript') == true
  -
scramble('scriptingjava, 'javascript') == true

Psuedo-Code:
  Take the smaller word and iterate through the characters. if the character appears in the second word, delete that character from the shorter word. If the character doesn't appear or there are characters left over return false. true otherwise.

Data Structure:
  -smaller_string = ''

Algortihm:  
  Step1:  whatever string is smaller make into variable smaller_string
  Step2: iterate through smaller_string
  Step3: if the longer string includes the character, remove from the smaller string.
  Step4: If the character doesn't appear or there are chracters left over return false, true otherwise

=end

def scramble(str1, str2)
  smaller_str = ''
  long_str = ''
  if str1.size <= str2.size
    smaller_str = str1
    long_str = str2
  else
    smaller_str = str2
    long_str = str1
  end
  
  smaller_str.chars.each do |char|
    if long_str.include?(char)
      smaller_str.sub!(char, '')
      long_str.sub!(char, '')

    else
      return false
    end
  end

  if smaller_str.empty?
    return true
  else
    false
  end

end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true