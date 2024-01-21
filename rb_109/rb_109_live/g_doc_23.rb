=begin
Find the longest substring in alphabetical order.
Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
There are tests with strings up to 10 000 characters long so your code will need to be efficient.
The input will only consist of lowercase characters and will be at least one letter long.
If there are multiple solutions, return the one that appears first.

data structures:
  -create current word

=end

# def longest(string)
#   current_str = ''
#   longest_str = ''
#   string.chars.sort.join('')

#   string.chars.each do |letter|
#     current_str << letter

#     if current_str != current_str.chars.sort.join('')
#       current_str = ''
#     end
     
#     if current_str.size > longest_str.size
#       longest_str = current_str
#     end
 
#   end

#   longest_str
# end


=begin

Problem:
  Find the longest substring in alphabetical order.

Input:
  string
Output:
  string

Rules:
  Explicit:
    If there are multiple solutions return the one that appears first.
    input will only consist of lowercase letters
  Implicit:
    If one letter return one letter


Data Structures:
Substring helper method
answer_str = ''

Algorithm:
  Step1: create an array of all substrings
  Step2: if substring is alphabetical and larger than answer_string, make it the new answer_string
  Step3: return answer_str





Examples
p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
  substrings are forward
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'

p longest('asd') == 'as'
# p longest('nab') == 'ab'
# p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
# p longest('asdfbyfgiklag') =='fgikl'
# p longest('z') == 'z'
# p longest('zyba') == 'z'


=end

def longest(string)
  substring_arr = find_substrings(string)
  answer_str = ''
  substring_arr.each do |word|
    if word == word.split('').sort.join && word.size > answer_str.size
      answer_str = word
    end
      
    # end
  end
  answer_str
end


def find_substrings(string)
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1...string.size).each do |idx2|
      arr << string[idx1..idx2]
    end
  end
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

