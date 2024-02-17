=begin
Alphabet symmetry
Consider the word "abode". We can see that the letter a is in position 1 and b is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice also that d and e in abode occupy the positions they would occupy in the alphabet, which are positions 4 and 5.
Given an array of words, return an array of the number of letters that occupy their positions in the alphabet for each word. For example,
solve(["abode","ABc","xyzD"]) = [4, 3, 1]
See test cases for more examples.
Input will consist of alphabet characters, both uppercase and lowercase. No spaces.
Good luck!

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

Problem:
This problem says to take an array of strings and return an array of integers, where the integer is the the number of characters that are in the same position in the string as their position in the alphabet.

Examples: edge cases
-Does capitalization count?
  -No

Data Structures:
Hash
  -key = letter
  -value = alphabet position
Array = []
  - Final answer array

Variables:
current_count = 0

Algorithm:
Step 0: Split array into strings.
  => .each
Step 1: split string into characters
  => .chars
Step 2: iterate through string and if index matches alphabet index increase current_count by one.
  => .each_with_index, +=, 
Step 3: when done push current count into final array.
  => <<

ERRORS:

-current_count keeps getting pushed to array on next letter.
  -fixed



=end

ALPHA_HASH = { 'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 'h' => 7, 'i' => 8, 'j' => 9, 'k' => 10, 'l' => 11, 'm' => 12, 'n' => 13, 'o' => 14, 'p' => 15, 'q' => 16, 'r' => 17, 's' => 18, 't' => 19, 'u' => 20, 'v' => 21, 'w' => 22, 'x' => 23, 'y' => 24, 'z' => 25 }

def solve(array)
  current_count = 0
  final_array = []

  array.each do |string|

    string.chars.each_with_index do |letter, index|
      if ALPHA_HASH[letter.downcase] == index
        current_count += 1
      end

      
    end
    final_array << current_count
    current_count = 0
  end
  
  current_count
  final_array
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]