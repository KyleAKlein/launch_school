=begin
Find the length of the longest substring in the given string that is the same in reverse.

As an example, if the input was "I like racecars that go fast", the substring (racecar) length would be 7.

If the length of the input string is 0, return value must be 0.

Example:
"a" -> 1
"aab" -> 2
"abcde" -> 1
"zzbaabcd" -> 4
'' -> 0

longest_palindrome('a') == 1
longest_palindrome('aa') == 2
longest_palindrome('baa') == 2
longest_palindrome('aab') == 2
longest_palindrome('baabcd') == 4
longest_palindrome('baablkj12345432133d') == 9

Problem:
  Find the longest substring in a given string and return its length.

Input:
  String
Output:
  Integer

Rules:
  Explicit:
    -If empty string return 0
    -If no substring that's a palindrome return 1.
  Implicit:
    -

Examples:
longest_palindrome('a') == 1
longest_palindrome('aa') == 2
longest_palindrome('baa') == 2
longest_palindrome('aab') == 2
longest_palindrome('baabcd') == 4
longest_palindrome('baablkj12345432133d') == 9


Data Structures:
  Helper method for substring array

Algorithm:
  Step1: pass string to helper method and return an array of all substring
  Step2: iterate through array and select all substrings that are palindromes.
  Step3: return the length of the largest palindrome.

  Helper Method:
  Step1: Create empty array
  Step2: slice string(start, ending)
  Step3: drop the last char, repeat until one char remains
  Step4: restart with next char of string.
  Step5: return array.

=end

def longest_palindrome(string)
  if string.empty?
    return 0
  elsif string.size < 2
    return 1
  else
    substring_arr = helper_substring(string)
  end

  palindrome = substring_arr.select {|word| word == word.reverse}
  longest = ''
  palindrome.each do |word| 
    if word.length >= longest.size
      longest = word
    end
  end
  longest.size
end

def helper_substring(string)
  array = []
  start_char = 0
  end_char = string.size
  loop do
    array << string.slice(start_char, end_char)
    end_char -= 1
    if end_char == 0
      start_char += 1
      end_char = string.size-start_char
    end
    break if start_char == string.size-1
  end
  array
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9