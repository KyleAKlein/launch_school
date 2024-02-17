=begin
!Messy redo
6 kyu
Given two words, how many letters do you have to remove from them to make them anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually in a different order).
Do not worry about case. All inputs will be lowercase.

Problem:
Given two words, you must remove characters until the strings are anagrams. return how many letters you have removed.

Step 1: sort letters
Step 2: select letters

=end

def anagram_difference(string1, string2)
  sorted1 = string1.chars.sort
  sorted2 = string2.chars.sort.join
  
  if sorted1 == sorted2
    return 0
  end

  selected = sorted1.select do |x|
    sorted2.include?(x)
  end

  # if sorted1.size < sorted2.size
  #   sorted1.split('').each do |letter|
  #     p sorted2.delete(sorted2.scan(letter).join)
  #   end
    
  a = string1.size - selected.join.size
  b = string2.size - selected.join.size
  a + b
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10