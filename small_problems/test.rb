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
  Given a string, return the longest palindrome substring

Input:
  string
Output:
  integer (length of longest palindrome)

Rules:
  explicit:
    -If the length of the input string is 0, return value must be 0.
  implicit:
    -single string, return 1
    -empty return 0.

Algorithm:
  Helper method:
    all_substrings
      -take the given string
      -iterate over the size of string (with an object) through find the starting position, (each method)
      -second iteration of same string (have the second idx) (2nd each method)
      - push all substring into object
      ex. "hello" "h", 'he', hel hell hello, e, el, etc.

  longest_palindrome:
    -get all substrings
    -select all the substrings which are same forward as reverse. (palindromes)
    -find max size. 
      -alt: use sort, take the last element.
    -return this size.
=end

# def longest_palindrome(string)
#   all_subs = all_substrings(string)
#   palindromes = all_subs.select {|word| word == word.reverse}
#   answer = palindromes.map {|string| string.size}
#   answer.max
# end

# def all_substrings(string)
#   (0...string.size).each_with_object([]) do |idx1, arr|
#     (idx1...string.size).each do |idx2|
#       arr << string[idx1..idx2]
#     end
#   end
  
# end


# p longest_palindrome('a') == 1
# p longest_palindrome('aa') == 2
# p longest_palindrome('baa') == 2
# p longest_palindrome('aab') == 2
# p longest_palindrome('baabcd') == 4
# p longest_palindrome('baablkj12345432133d') == 9

