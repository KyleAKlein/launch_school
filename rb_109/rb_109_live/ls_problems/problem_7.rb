# =begin
# #Given an array of strings made only from lowercase letter, return an array of all the characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
# p common_chars(['cool, 'lock', 'cook']) == ['c', 'o']
# p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
# p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

# Problem:
#   Given an array of strings return an array of all the characters that show up in all strings within the given array.

# Input: array (of strings)
# Output: array (of letters)

# Rules:
#   Explicit:
#     -All letter are lowercase
#     -Include duplicates
#   Implicit:
#     -if no letters, return empty array

# Examples:
# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
  
# p common_chars(['cool, 'lock', 'cook']) == ['c', 'o']

# p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']

# p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []
#   -if no letters, return empty array

# Data Structures:
#   -answer_arr = []
#   -each_word 
#   -each_char

# Pseudo-Code:
#   Iterate thru the characters in the first word. if the letter is found in the other words, remove the letter. if the ltter is found in all the words, add that char to a new array, 
# Algorithm:
#   Step1:
#     iterate through the collection. (make variable)
#   Step2:
#     iterate through each char of each word (make variable)
#   Step3:
#     if char is equal to a 

# =end

# # def common_chars(array)
# #   answer_arr = []
# #   counter = 0
# #   array[0].chars.each do |char|
# #     counter = 0
# #     array.each do |word|
# #       if word.include?(char)
# #         counter += 1
# #       else
# #         next
# #       end
  
# #       if counter == array.size
# #         answer_arr << char
# #       end
# #     end
# #   end
# #   p answer_arr
# # end

# def common_chars(array)
#   chars = array.shift.chars
#   answer = chars.select do |char|
#     array.all? { |letter| letter.sub!(char, '') }
#   end
#   answer
# end


# p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
# p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
# p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
# p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []


def remove_single_char!(char, remaining_words)
  remaining_words.each do |word|
    word.sub!(char, '')
  end
end

def common_chars(arr)
  first_word_chars = arr[0].chars # magic word
  remaining_words = arr[1..-1]
  results = []

  first_word_chars.each do |char|
    if remaining_words.all? { |word| word.include?(char) }
      results << char
      remove_single_char!(char, remaining_words)
    end
  end
  results
end





=begin
Given an array of strings made only from lowercase letter, return an array of all the characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool, 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

Problem:
  Given an array of strings, return an array of chars of all the characters that show up in ALL the strings.

Input:
  An array of strings
Output:
  An array of chars

Rules:
  Explicit:
    -Only lowercase letters
    -Includes
  Implicit:
    -None. return empty array

Examples:

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']

p common_chars(['cool, 'lock', 'cook']) == ['c', 'o']

p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']

p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'ggrrrrr', 'yyyzzz']) == []

Data Structures:
answer_arr = []
orig_arr = array
count

Approach:

  -array[0].chars.each do |char|
    array.each do |word|
      if word.include?(char) # ['cool, 'lock', 'cook']
        count += 1
      else
        next
      end
      
      if count == array.size
        word.gsub!(char, '')
        answer_arr << char
      end


Algorithm:
    -Take the first word of the array
    -break into individual chars. 
    -iterate through each char
    -iterate through original array
    -if char appears in each word
    -kick char into answer_arr
    -remove char from word
    -return answer_arr

=end

