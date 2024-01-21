=begin

Write a method to find the longest common prefix string amongst an array of strings.
If there is no common prefix, return an empty string.

Input: [ 'flower', 'flow', 'flight']
Output: 'fl'

Input: ['dog', 'racecar', 'car']
Output: ''

All given inputs are in lowercase letters a-z.

common_prefix(['flower', 'flow', 'flight']) == 'fl'
common_prefix(['dog', 'racecar', 'car']) == ''
common_prefix(['interspecies', interstellar', 'interstate']) == 'inters'
common_prefix(['throne', 'dungeon']) == ''
common_prefix(['throne', 'throne']) == 'throne'

Problem:
  Find the longest common prefix srting among an array of strings.

Input:
  array of strings
Output:
  string

Rules:
  -if there is no common prefix, return an empty string
  -all strings are lowercase
  implicit:
    -

Data Structrues:
-answer_string = ''
  
Algorithm:
  -Take the first word in the array
  -go letter by letter
  -see if all the strings, contain that letter at the same position.
  -if it does push that letter into answer_string 
  -return answer_string

=end

def common_prefix(array)
  answer_string = ''
  array[0].chars.each_with_index do |char, idx|
    if array.all? { |word| word[idx] == char }
      answer_string << char
    end
    
  end
  p answer_string
end


p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'car']) == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix(['throne', 'throne']) == 'throne'













=begin
Problem: 
  Take an array of strings and return the longest common prefix. If there is no common prefix return an empty string

Input:
  array (of strings)
Output:
  string (longest common prefix)

Rules:
  Explicit:
    -If there is no common prefix, return an empty string
    -all given strings are lowercase letters a-z
  Implicit:
    -If all words are the same word, longest prefix would be the entire word, return entire string.

Questions:
  What is a prefix?
    -A prefix is the leading characters of a string. 

Examples:
common_prefix(['flower', 'flow', 'flight']) == 'fl'
  -
common_prefix(['dog', 'racecar', 'car']) == ''
  -no common prefixes, return empty string
common_prefix(['interspecies', interstellar', 'interstate']) == 'inters'
  -longest prefix is 6 chars long.
common_prefix(['throne', 'dungeon']) == ''
  -no common prefix
common_prefix(['throne', 'throne']) == 'throne'
  -longest prefix is entire word

Pseudo-code:
  You only need to use the first word in the array. Break this word into characters and iterate through each char. if the first char is not the first character in each of the words, return an empty string. if the first character is the first character in all the words in the array, add this character to the answer_string. Repeat for all letters in the first word. Return the answer_string.

Data Structures:
answer_string = ''

Algorithm:
  Step1: break first word into characters
    array[0].chars
  Step2: Iterate through each character (keep track of index)
    .each_with_index
  Step3: if this character matches the first character of all words, add it to the answer_string.
    array.all?
    if word[index] == char
      answer_string << char
    else
      next
    end
  Step 4: return answer_string



def common_prefix(array)
  answer_string = ''
  array[0].chars.each_with_index do |char, index|
    if array.all? { |word| word[index] == char }
      answer_string << char
    else
      next
    end

  end
  answer_string
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'car']) == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'dungeon']) == ''
p common_prefix(['throne', 'throne']) == 'throne'

=end