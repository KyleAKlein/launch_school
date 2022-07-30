=begin

Count letters in string
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby.

Example:
letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})

Problem:
This problem is asking to count the lowercase letters in a given string and return the letter count in a hash with each key being the letter in symbol form and the value being the count.

Input: string
Output: hash (key=symbol, value=count)

Example: Edge Cases
What if letter is capitalize? No answer, assume lowercase
what is string contains non-alpha characters? No answer, assume lowercase

Data Strutures:
Create:
  -Hash

Algorithm:
Step 1 - split string into individual characters
  => .chars
Step 2 - iterate through each character and
  -create hash key in symbol form
  -increase count by 1.
  => .each, hash[letter.to_sym], hash[letter.to_sym] += 1


ERRORS:
undefined method for nilClass, '+'
  -add conditional if hash[key] = nil
  => if hash[key] == nil then hash[key] = 1

=end

def letter_count(string)
  hash = {}

  string.chars.each do |letter|
    if hash[letter.to_sym] == nil
      hash[letter.to_sym] = 1
    else
      hash[letter.to_sym] = hash[letter.to_sym] += 1
    end
  end

  hash

end


p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}