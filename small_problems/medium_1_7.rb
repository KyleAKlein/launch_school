=begin

# PROBLEM:

Write a method that takes a sentence string as input, and returns the same string with any 
sequence of the words 'zero', 'one', 'two', 'three', 
'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') 
== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

input: string of words
output: string with words of numbers turned into integers

Does zero count as a number? yes
is it case sensitive? no

# Data Structure

string
hash of words as keys and integers as values

# Algorithm

1. string.
2. split string into individual words.
3. iterate through the words, if word is a spelled out number swap it to the corresponding integer.
4, if not a number, don't change.
5. return string

# Code


=end

NUMBER_HASH = { 'zero'=> 0, 'one'=> 1, 'two'=> 2, 'three'=> 3, 'four'=> 4, 'five'=> 5,
'six'=> 6, 'seven'=> 7, 'eight'=> 8, 'nine'=> 9
}

def word_to_digit(str)
  new_str = str.split.map! do |word|
    if NUMBER_HASH.keys.include?(word)
      word = NUMBER_HASH[word]
    else
      word
    end
  end
  new_str.join(' ')
end





p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'