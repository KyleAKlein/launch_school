# Problem 1:

# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

=begin

Problem:  
  Given an array of numbers, return a new array of how many numbers are smaller than the specific element.
  If a number is repeated only count it once.

Input:
  array of numbers
Output:
  array of numbers

Rules:
  Explicit:
    -if a number is repeated, only count it once.
  Implicit:
    -if all numbers in the array are the same number, the result will be an array of 0s.
    -if array has only 1 number, then the result will be [0]

Data Structures:
  - answer_arr = []

  -create an array of uniq values.
    uniq_nums

Algorithm:
  -iterate over the given collection and transform each element into the count of how many numbers are less than the current element. (block given to count)

  -make return of iteration a new variable (answer_arr) (no need to make variable)
  - 

=end

# def smaller_numbers_than_current(array)
#   uniq_nums = array.uniq #[8,1,2,3]
#   array.map do |num|  #[8,1,2,2,3]
#     uniq_nums.count {|x| x < num}
#   end
 
# end 


# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])== [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]


#Problem 2:

=begin

# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

Problem:
  Given an array of integers, return the minimum sum of 5 consecutive numbers in the array.

Input:
  array of integers
Output:
  integer

Rules:
  Explicit:
    -if array if less than 5 elements return nil.
  Implicit:
    -

Data Structures:
  -helper method
    -get_all_subarrays
      -create ans_arr
      -iterate through array keeping track of index.
        -use element reference to gather from the index(start), to end (index +4) and push into ans_arr
      -
      -from ans_arr, return all elements that are 5 elements in size.

Algorithm:
  - if array size is less than 5 return nil else send to helper method and get array of all consecutive subarrays (assign to a variable)
  -transform subarray to the sum of each sub array. (assign to sub_sum)
  -return min.
=end
# def find_all_subarrays(array)
#   ans_arr = []
#   array.each_with_index do |num, idx|
#     ans_arr << array[idx..idx+4]
#   end

#   ans_arr.select { |arr| arr.size == 5 } 
# end



# def minimum_sum(array)
#   if array.size < 5
#     return nil
#   else
#     sub_arrs = find_all_subarrays(array)
#   end

#   sub_sum = sub_arrs.map { |arr| arr.sum } # 15, 20
#   sub_sum.min
# end

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10


=begin 

Problem 3:

# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

Problem:
  Given a string, return the string but with every other character in every 3rd word converted to uppercase. Other characters remain the same

Input:
  string
Output:
  string

Rules:
  Explicit:
    -make every other character in every 3rd word, uppercase
    -Do not change other characters
  Implicit:

Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
  -if word has less than 2 chars, no change
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'



=end

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'


=begin

Problem x:

Problem:
given a string, return the same string but with the most common character, changed to uppercase but only the second to last occurance. If there is a character with the same amount as the most common. only uppercase the letter that occurs first. assume lowercase

Input:
  string
Output:
  same string but with the character that appears the most often, capitalized but only the second to last occurance.

Rules:
  Explicit:
    -if there are more than one most common char only use the one that occurs first.
  Implicit:
    -

Examples:

second_last("Hello World")== 'HelLo World'
second_last("Example Text")== 'EXample Text'
second_last('bigbangdingdang') == 'bigbangdinGdang'

Data Structures:
  variables
    -most common char 
    -most common char count
  hash
    - key - character, value - char count
    -helper method
     - place each char of string into an array
      -iterate through given string (split string into individual characters and place in an array before iteration) and create a hash where the letter is the key and each occurence increases the count by 1. (if key needs to be made, make value 1)

Algorithm:
  - send string to helper method to create hash
  - find most common char + count (hash[key]=count)
    -need an array of all values.
  - iterate through given string (first put each char into an array) and transform each char. 
  - create count, 
  -if char matches most common char then increase count by 1. if count is 1 less than the total count for that char then uppercase the char, AND if the char is the most common char

else just return the char.
    (note: use mutative method)
  -the return of this tranformative iteration should return the correct string. 


=end

# def create_hash(string)
#   string.chars.each_with_object({}) do |char, obj|
#     if obj[char] == nil
#       obj[char]=1
#     else
#       obj[char]+=1
#     end
#   end
# end

# def second_last(string)
#   char_hash = create_hash(string)
#   char_hash_max_values = char_hash.values.max
#   most_common_char_hash = char_hash.select {|k,v| v == char_hash_max_values}
#   most_common_char = most_common_char_hash.keys[0]
#   most_common_char_count = most_common_char_hash[most_common_char_hash.keys[0]]
#   count = 0

#   ans = string.chars.map! do |char|
    
#     if char == most_common_char #'l'
#       count += 1
#     end
#     # p count
#     if count+1 == most_common_char_count && char == most_common_char
#       char.upcase
#     else
#       char
#     end
#   end
#   ans.join
# end

# p second_last("hello world")== 'helLo world'
# p second_last("example text")== 'examplE text'
# p second_last('bigbangdingdang') == 'bigbangdinGdang'


# Problem 4:

# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".

#Algorithm:
  #-iterate through the array, name element num1
  #-iterate again through the array and name this element num2
  #-minus the two numbers and get the abs value.
  #- if this value is less than the ans then make this pair of numbers(in an array) the new answer.
  #-return ans in array format

# def closest_numbers(array)
#   ans = [0, 10**10]
#   array.each do |num1|
#     p ans
#     array.each do |num2|
#       if (num1-num2).abs < (ans[0]-ans[1]).abs && (num1-num2).abs != 0
#         ans = [num1, num2]
#       else
#         next
#       end
#     end
#   end
#   p ans
# end

# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
# p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
# p closest_numbers([12, 7, 17]) == [12, 7]


# def hash_count(str)
#   hsh = str.downcase.chars.each_with_object({}) do |char, obj|
#     if obj[char] == nil
#       obj[char]= 1
#     else
#       obj[char]=obj[char] += 1
#     end
#   end
#   p hsh.sort.reverse!.pop#.reverse!
#   hsh
# end

# p hash_count('Example strings')



=begin

Problem 2

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000


Examples:
[1, 2, 5, 6, 5, 2]  -->  2
[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4

Problem:
  Given an array of integers, return a count of how many pairs there are.

Input:
  Array of integers
Output:
  Integer

Rules:
  Explicit:
    -If array is empty or contain only 1 value, return 0
    -If there are multiple of a certain number, count each pair only once.
      ex. [0,0,0,0] => 2 (2 pairs of 0s)
  Implicit:
    -
Examples:
  [1, 2, 5, 6, 5, 2]  -->  2
    - 2's and 5's
  [1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
  
  [0, 0, 0, 0, 0, 0, 0]), => 3 
    -if there are 7 0's, there are only 3 pairs.

Algorithm:
 
=end

# def pair_counter(array)
#   counter = 0
#   arr = array.uniq
#   arr.each do |num|
#     if (array.count(num) / 2) > 0
#       counter += (array.count(num) / 2)
#     end
#   end

#   counter
# end


# p pair_counter([1, 2, 5, 6, 5, 2])  ==  2
# p pair_counter([1, 2, 2, 20, 6, 20, 2, 6, 2]) ==  4

# def find_substrings(string)
#   (0...string.size).each_with_object([]) do |idx1, substrings|
#     (idx1...string.size).each do |idx2|
#       substrings << string[idx1..idx2]
#     end
#   end # returns substrings array
# end

# p find_substrings('hello')

# ARR = [['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'],
# ['G','T'], ['R','E'], ['F','S'], ['J','W'], ['H','U'],
# ['V','I'], ['L','Y'], ['Z','M']]

# def block_word?(string)
#   ARR.each do |block|
#     if string.upcase.include?(block[0]) && string.upcase.include?(block[1])
#       return false
#     end
#   end
#   true
# end

# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
# p block_word?('jest') == true


p ("a-z").include?('b')
p "encoded".tr('a-z', 'za-y')
p "encoded".tr('a'..'z','z''a'..'y')