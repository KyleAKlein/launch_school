def find_substrings(string)
  (0...string.size).each_with_object([]) do |idx1, substrings|
    (idx1...string.size).each do |idx2|
      substrings << string[idx1..idx2]
    end
  end # returns substrings array
end

#delete!  Method will delete all occurrences, so if you want to delete character by character use, #sub!(char, ‘’)

def is_prime?(num)
  arr = []
  1.upto(num) do |x|
    if num % x == 0
      arr << x
    end
  end

  arr.size == 2 
end

require 'prime'

def minimum_number(array)
  difference_counter = 0
  loop do
    if Prime.prime?(array.sum + difference_counter)
      return difference_counter
    end
    difference_counter += 1
  end
end

# p minimum_number([30,5])

# ('a'..'z').to_a
# p "encoded".tr('a-z', 'za-y')
# p "encoded".tr('a'..'z','z''a'..'y')
# p "En13coded".tr('a-zA-Z', 'n-za-mN-ZA-M')

clean_words = word.delete('^A-Za-z')

#you can tag on .with_index to map
["this", "or", "that"].map.with_index do |word, idx| 


def find_substring(string)
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1...string.size).each do |idx2|
      arr << string[idx1..idx2]
    end
  end
  arr
end

#Given an array of numbers, return a hash of every combination of 2 of the number as the value and the key being the indices of the nums
#[1,2,3,4]
#{[0, 1]=>[1, 2], [0, 2]=>[1, 3], [0, 3]=>[1, 4], [1, 2]=>[2, 3], [1, 3]=>[2, 4], [2, 3]=>[3, 4]}


def find_all_subarrays(array)
	(0...array.size-1).each_with_object({}) do |idx1, obj|
		(idx1+1...array.size).each do |idx2|
			obj[[idx1, idx2]]=[array[idx1], array[idx2]]
		end
	end
end



#Hash with count of each letter in a string
def hash_count(str)
  str.downcase.chars.each_with_object({}) do |char, obj|
    if obj[char] == nil
      obj[char]= 1
    else
      obj[char]=obj[char] += 1
    end
  end

end

hash_count('Example strings')

# Problems can often be broken down into:
#   1. Find all possible combinations
#   2. Select combinations that meet specified criteria
#   3. Find optimal combination

# Use Enumerable if applicable. (any?, all?, etc.)


# Hot Keys:
# Select all occurences of the selected word
#   command + shift + L

# Methods that mess you up:
# index (will return the first appearance)
# slice

#Puzzle Pieces:
  #create a alpha array
  #iterate through alpha array and when a string char matches, build new string answer.
  #this is a different way to solve a problem than iterating through the string itself.
  #for a sort method
  #or use sort by

#new method:
# permutation


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
  Given a string, return an array of integers where the number represents how many letters appear in the same "position" that it appears in the alphabet.

Input:
  String
Output:
  array of integers

Rules:
  Explicit:
    -Each word returns its own integer.
    -The integer is the total number of letter that appear in the same "position"
  Implicit:
    -case does not matter
    -return 0.


Data Structures:
alphabet array
ans_arr = []

Examples:
p solve(["abode","ABc","xyzD"]) == [4,3,1]
  -case does not matter
p solve(["abide","ABc","xyz"]) == [4,3,0]
  -return 0 if no letters match
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]

p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

Algorithm:
  -break each word in individual chars. 
  -Find index of char in alpha_arr
  - if index of char matches alpha_arr index
  - increase count by 1
  - push count into ans_arr

# =end

# def solve(array)
#   ans_arr = []

#   array.each do |word|
#     ans_arr << give_me_count(word)
#   end
#   ans_arr
# end

# def give_me_count(word)
#   alpha_arr = ('a'..'z').to_a
#   count = 0

#   word.downcase.chars.each_with_index do |char, idx|
#     if alpha_arr.index(char) == idx
#       count += 1
#     end
#   end

#   count
# end

# p solve(["abode","ABc","xyzD"]) == [4,3,1]
# p solve(["abide","ABc","xyz"]) == [4,3,0]
# p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
# p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]


let word = 'hello';
let results = [];

for (let startSlice = 0; startSlice < word.length; startSlice += 1) {
  for (let endSlice = startSlice + 1; endSlice <= word.length; endSlice += 1) {
    results.push(word.slice(startSlice, endSlice));
  }
}

console.log(results);

Learn substring for strings AND ARRAY



// every group that is consecutive and 4 in size CONSECUTIVE
// 'back', 'ack ', 'ck o'
// [[2,4], [4,5], [6, 3]....

// each slice (group size)
// [[2, 4], [5, 6], [3, 4]...]


function groupSize(str, size) {
  let results = [];
  for (let idx = 0; idx <= str.length - size; idx += 1) {
    results.push(str.slice(idx, idx + size));
  }
  return results
}

console.log(groupSize(word, 8));

let word = 'back once again renegade master';



#Notes:
#Find a method. (Type of question)
  #given a start and an end. Find the method that will give that solution.