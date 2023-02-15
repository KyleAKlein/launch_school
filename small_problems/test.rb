=begin
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

Problem:  
  Given a string, return the length of the longest vowel substring.

Input:
  string
Output:
  integer

Data Structures:
  vowels = 'aeiou'

  helper method
    -get all substrings
      -iterate from 0 to length of string (creating an object) (an array) making the num idx1
        -iterate again from 1 to length of string making num idx2
      push all substrings into object

Algorithm:
  -create an array of all substrings
  -iterate through each substring and remove any substring that contains any consonants. (selection)
    -in each substring determine if each character is a vowel, if any character is not a vowel, do not select.
  -transform each substring into the size of the substring.
  -return the largest num

=end

# def find_all_subarrays(string)
#   (0...string.size).each_with_object([]) do |idx1, obj|
#     (idx1...string.size).each do |idx2|
#       obj << string[idx1..idx2]
#     end
#   end
# end

# def solve(string)
#   arr = find_all_subarrays(string)
#   ans = arr.select do |sub| #['h','he'..]
#     sub.chars.all? {|char| 'aeiou'.include?(char)}
#   end

#   ans.map(&:size).max
# end

# p solve("codewarriors") == 2
# p solve("suoidea") == 3
# p solve("iuuvgheaae") == 4
# p solve("ultrarevolutionariees") == 3
# p solve("strengthlessnesses") == 1
# p solve("cuboideonavicuare") == 2
# p solve("chrononhotonthuooaos") == 5
# p solve("iiihoovaeaaaoougjyaw") == 8

=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

solve("1341") == 7
solve("1357") == 10
solve("13471") == 12
solve("134721") == 13
solve("1347231") == 20
solve("13472315") == 28

Problem:
  Given a string of integers, return the number of odd-numbered substrings that can be formed.

Input:
  integers in string form

Output
  integer

Rules:
  Explicit:
    -odd means, the last digit is odd.

Data Structures:
  -helper method:
    find_all_substrings
      - iterate from 0 to string size, create an object, an assign idx1
        -iterate again from idx1 to string size and assign idx2
          -use elemental reference to push each substring into the created obj
    -return obj
 

Algortihm: 
  -array of all possible sub arrays.
  -transform each substring into a integer
  -return count of how many substrings(integer-form) are an odd number.

  Error:
    -retrieving the last char in a string, returns a string not the integer.



=end

# def find_all_substrings(string)
#   (0...string.size).each_with_object([]) do |idx1, obj|
#     (idx1...string.size).each do |idx2|
#       obj << string[idx1..idx2]
#     end
#   end
# end

# def transform_to_i(array)
#   arr = array.map(&:to_i)
# end

# def solve(string)
#   subs = find_all_substrings(string)
#   arr_of_i = transform_to_i(subs)
#   arr_of_i.count { |substring| substring.odd? }
# end

# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28


=begin

For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :

a tuple (t, k) (in Python)
an array [t, k] (in Ruby and JavaScript)
in C, return k and write to the string t passed in parameter

  s = "ababab"; ("ab", 3)

  s = "abcde"("abcde", 1) # because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.

Problem:
  -Given a non-empty string. return the minimum substring (t) and maximum number (k), which t times k equals the given string.

Input:
  -string
Output:
  -susbstring, integer

Data Structure:
  Helper Method:
    -find_all_substrings
      -from 0 to string size, iterate, creating an object (an array), and assign idx1
        -iterate again from idx1 to string size and assign idx2
        push string substring idx1 to idx2 into obj
  -return obj

Algorithm:
  -get an array of all substrings.
  -iterate through the array of substrings
    -assign a variable (integer) to the string divided by the current substring.size
    -from 1 to variable. name the block's parameter "number"
      -if string is equal to the substring times the number
        -return the substring and integer, inside an array.

=end



# def find_all_substrings(string)
#   (0...string.size).each_with_object([]) do |idx1, obj|
#     (idx1...string.size).each do |idx2|
#       obj << string[idx1..idx2]
#     end
#   end
# end

# def f(string)
#   subs_arr = find_all_substrings(string)
#   subs_arr.each do |substring|
#     multiple = string.size / substring.size
#     1.upto(multiple) do |number|
#       if string == substring*number
#         return [substring, number]
#       end
#     end
#   end

# end

# p f("ababab") == ["ab", 3]

# pf("abcde") == ["abcde", 1]


=begin


Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

Problem:
  Determine if a portion of the first string can be rearranged to match string 2. Return true, otherwise false

Input:
  two strings
Output:
  boolean

Algorithm:
-break the substring into individual characters and place inside an array
-iterate through the substring
	-if the current character count in the substring is less than the count of the same character in the string
		-return false
-return true


		
=end

# def scramble(s1, s2)
# 	s2.chars.each do |char|
# 		if s1.count(char) < s2.count(char)
# 			return false
# 		end
# 	end
# 	return true
# end

# p scramble('rkqodlw','world') == true

# def solution(number1)
#   ans_arr = []
#   1.upto(number1-1) do |num|
#     if num % 3 == 0 || num % 5 == 0
#       ans_arr << num
#     end
#   end
# 	p ans_arr
  
#   p ans_arr.sum
# end


# solution(10)==23

=begin
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

helper method:
	(0...string.size).each_with_object([]) do |idx1, obj|
		(idx1...string.size).each do |idx2|
			obj << string[idx1..idx2]
	end
end

greatestProduct("123834539327238239583") // should return 3240
=end

# def find_all_substrings(string)
#   array = (0...string.size).each_with_object([]) do |idx1, obj|
# 		(idx1...string.size).each do |idx2|
# 			obj << string[idx1..idx2]
#     end
# 	end
#   array.select {|sub| sub.size == 5 }
# end




# def greatest_product(n)
#   sub_arr = find_all_substrings(n)
#   ans_arr = sub_arr.map(&:to_i) 
# 	answer = 0
	
#   ans_arr.each do |num|
# 		if num.to_s.chars.map(&:to_i).inject(:*) > answer
# 			answer = num.to_s.chars.map(&:to_i).inject(:*)
# 		end
# 	end
# 	answer
# end

# p greatest_product("123834539327238239583") == 3240


# def find_all_pairs(array)
#   (0...array.size).each_with_object do |idx1, arr|
#     (0...array.size).each do |idx2|
# 			arr << [array[idx1], array[idx2]]
# 		end
# 	end
# end



# p find_all_pairs([3, 2, 4])
# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]



#==========
# Advanced PEDAC Study Session

=begin
What is PEDAC?
- disciplined, structural approach to solving programming problems 
- First process the problem (PEDA), then code with intent (C)

Benefits:
- Will save us time in the long run
- Will help us avoid issues that often arise when we encounter a problem and try and jump straight to coding (i.e. hack and slash coding)
- Failure to meet requirements of the problem 
- Failure to handle edge cases appropriately
- Resulting solution is hard to read or maintain

Tips:
- Getting stuck is normal
- Make mistakes, learn from the mistakes, continue practicing
- Remember: PEDAC should help you. Find a way to make it work for you.
=end

=begin
Problem Analysis:
- Goal: understand what you're being asked to do
- Read the problem description
- Identify expected input and output
- Establish rules/requirements/define the boundaries of the problem 
- Ask clarifying questions
- Take your time on this step!
=end

=begin
Algorithm:
- Goal: write out steps to solve the given problem in plain English
- A logical sequence of steps for accomplishing a task/objective
- Start high level, but make sure you've thought through and have provided sufficient detail for working through the most difficult parts of the problem
- Stay programming-language-agnostic
- Can create substeps for different parts or separate concerns into a helper method
- You can (and should) revisit your algorithm during the implementation stage if you need to
refine your logic
- Before moving onto implementing the algorithm, check it against a few test cases
=end

=begin
Code
- Goal: translate the algorithm into your programming language of choice
- Code with intent. Avoid hack and slash - TEST FREQUENTLY
- Use the REPL or run your code as a file
- When testing your code, always have an idea in place of what you're expecting
=end

=begin
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target
=end

# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]

=begin KYLE

Problem:
  Given a collection of numbers, find indices of two numbers that when added equal the target number

Input: an array of numbers, integer
Output: array of two integers (indices)
  ex. [0,1]
  
Test Cases:
# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]
  
Rules:
  Explicit:
    -Find indices of two numbers that add up to the target number
  
  Implicit:
    -indices can be returned in any order
   

Data Structures:
  -create answer_arr = []
  
  Helper Method:
    -find_all_pairs
      -from 0 to the array size, iterate through and create an object and assign idx1
      -from 0 to the array size, iterate again and assign idx2
      -push each pair of numbers from array, passing in idx1 and idx2, as element reference.

Algorithm:
  -Send given array to Helper Method
    
  -Iterate through the array of subarrays and
    find sum of each sub Array
    -if sum equals the target numbers
    - push idx of numbers into answer_arr

    -return answer_arr


Alternate Solution: 
Algorithm:
  -Iterate through the given array
		-assign idx1
	-Iterate again through the same array starting at idx+1
		-assign idx2
	-Add both elements
		-if they equal the target number return the array of both idices
   
      
=end

# def two_sum(array, target)
# 	0.upto(array.size) do |idx1|
# 		idx1.upto(array.size) do |idx2|
# 			if array[idx1] != array[idx2] && array[idx1] + array[idx2] == target
# 				return [idx1, idx2]
# 			end
# 		end
# 	end

# end

#[2, 11, 7, 15]
#[2,11] index 0,1
#[2,7]	index 0,2
#[2,15] index 0,3
#[11,7] index 1,2
#[11,15] index 1,3
#[7,15] index 2,3
# answer = []
# array = [1,2,3,4]
# (0...array.size-1).each do |num|
# 	(num+1...array.size).each do |idx2|
# 	answer << [array[num], array[idx2]]
# 	end
# end
# p answer

# def find_all_subarrays(array)
# 	(0...array.size-1).each_with_object({}) do |idx1, obj|
# 		(idx1+1...array.size).each do |idx2|
# 			obj[[idx1, idx2]]=[array[idx1], array[idx2]]
# 		end
# 	end
# end


# def two_sum(array, target)
# 	answer = []
# 	all_arr = find_all_subarrays(array)
# 	ans_arr = all_arr.select { |sub, v| v.sum == target }
# 	ans_arr.keys.flatten
# end


# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]

 

# p find_all_subarrays([1,2,3,4])


=begin NATHANIEL
input: array of integers, integer
output: an array of indices
Rules:
  explicit: the sum of two numbers in the number array need to add into an integer
  implicit: there is a solution?
  a number cant be used twice.
Test cases:
  (1, 2, 3, 4, 5, 6), 10  (3, 5)
  (1, 0, 0, 0, 0, 1), 2  (0, 5)
Algorithm:
  for every number within the number array, look for the complement within the number array. if it exists, return the indices of that number and the complement.
=end

=begin DON
# Problem- 
# Input: set of integers
# Output:  two indices
  # find a subset of 2 numbers whose sum equals the given number
      # is there a minimum length of subset? subset length of 2
      # positives and negatives?
# Examples/test cases
# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]
# Data structure- what are you going to use; 
   # arrays and subarrays
#Algorithm
# High-level: overarching approach, plain english
    # sum equals target number given, find two numbers that equal sum, if sum is included return the indices of those two numbers
# Low level: use the high level to write a detailed approach. 
     # Initialize a variable sum that equals target number
     # Iterate through numbers in the array to find two that equal sum
        # outer iteration- first number with index 
        # inner iteration- second number with index 
          # if first number plus second number equals sum return both indices
     #
        

=end



=begin
I have interviewed five software engineering candidates over the past two weeks, including folks with grad degrees in computer science/ex-FAANG with 7+ years of experience. All five were jointly rejected by myself and a co-interviewer either because the candidates jumped straight into implementation and ended up with bugs during testing or unhandled edge cases, and/or their oral-written communication was poor.

So, for those folks who are 'PEDACing' for the first few times:
1) Train your problem solving muscles to start with PEDAC by default (or some equivalent thereof);
2) Get comfortable talking through problems out loud, not just typing silently.

Can't stress enough that PEDAC isn't an arbitrary heuristic meant for getting through the curriculum or 109/129 oral assessments. PEDAC works, especially under pressure.

- Sam Swire (Check)
=end

=begin
Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target


# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# You can return the answer in any order.

# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]

Problem:
	Given an array of integers, return the indices of the two numbers that when added equal the given target number.

Input:
	an array and an integer
Output:	
	array of two numbers (indices)

Rules:
	Explicit:
		-Answer can be returned in any order
	Implicit:
		-

Whiteboard:
		# [3,2,4]
		# [ [3,2], [3,4], [2,4] ] 
		# 0,1
		# 0,2
		# 1,2

		iterate options:
			range: first index
				(0...array.size).to_a # [0,1,2,3]  <= 1 too many elements 
					-I want to keep the zero since this is starting index.
					-Use .. instead of ... because we need sub arrays of two elements, we wont need to iterate up to the last element.
					solution:	(0..array.size).to_a # [0,1]

			range again: second index
				(idx1+1..array.size).to_a #[1,2]
	



Data Structures:
	
	answer array
		-two elements (integers)
	
	-helper method (all possible combinations)
		-array of subarrays (2 elements in size)
			-iterate through the array up to, not including, the final element
					-create an object (hash)
					-assign idx1
				-iterate again
					-assign idx2
					-create key-value pairs for the object
						-key being an array of both indices
						-value being an array of both numbers
					



	needed: (backwards)
		-conditional statement
			-if element1 added to element2 equals target
				-return the idx of element 1 and idx of element2
					-return must be inside of an array
		-an array of all possible combinations of element1 and element2
			-helper method to create all_subarrays
		
	Algorithm
		-send array of numbers to helper method
		-iterate through hash object and select the pair who's value's sum equals the target number
		-assign the key to a local variable (answer)
		-return only the key 
			-remove any nested arrays inside local variable.

=end

# def hash_of_all_subarrays_pairs(array)
# 	(0..array.size).each_with_object({}) do |idx1, hsh|
# 		(idx1+1..array.size-1).each do |idx2|
# 			hsh[[idx1, idx2]]=[array[idx1], array[idx2]]
# 		end
# 	end

# end

# def two_sum(array, target)
# 	hsh = hash_of_all_subarrays_pairs(array)
# 	answer = hsh.select { |k,v| v.sum == target }
# 	answer.keys.flatten
# end


# p two_sum([2, 11, 7, 15], 9) == [0, 2]
# p two_sum([3, 2, 4], 6) == [1, 2]
# p two_sum([3, 3], 6) == [0, 1]


=begin
Write a function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string. The input string can be assumed to contain only alphabets (both uppercase and lowercase) and numeric digits.

"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

Problem:
	Given a string of alphanemeric characters, return the number of characters that appear more than once in the input string.

Input:
	string
Output:
	integer

Rules:
	Explicit:
		-characters are case-insensitive
	Implicit:
		-return 0, if no characters appear more than once.

Data Structures:
		answer array = []

Algorithm:
	-take the given string and downcase it
	-create an array with every uniq character in the down cased string.
	-iterate over the unique array
		-get a count of each character from the original string
			-(account for character case)
			-if the count if greater than 1
				-push the char into the answer array
	-return the size of the answer arr.

=end

# def char_count(string)
# 	answer_arr = []
# 	down_case = string.downcase
# 	down_case.chars.uniq.each do |char|
# 		if down_case.count(char) > 1
# 			answer_arr << char
# 		end
# 	end
# 	answer_arr.size #
# end

# p char_count("abcde") == 0 # no characters repeats more than once
# p char_count("aabbcde") == 2 # 'a' and 'b'
# p char_count("aabBcde") == 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
# p char_count("indivisibility") == 1 # 'i' occurs six times
# p char_count("Indivisibilities") == 2 # 'i' occurs seven times and 's' occurs twice
# p char_count("aA11") == 2 # 'a' and '1'
# p char_count("ABBA") == 2 # 'A' and 'B' each occur twice

# def is_prime?(n)
#   ans_arr = []
#   1.upto(n) do |num|
#     if n%num == 0
# 			p num
#       ans_arr << num
#     end
#   end
# 	p ans_arr
#   p ans_arr.size == 2      
# end

# def minimum_number(numbers)
#   count = 0
  
#   if is_prime?(numbers.inject(:+) + count)
# 		puts "hey"
#     return count
#   else
#     count += 1
#   end
  
# end

# p minimum_number([2,12,8,4,6])

=begin

You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}:
Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

Let's look at another one.
You are given the array {1,100,50,-51,1,1}:
Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

Note: Please remember that in most programming/scripting languages the index of an array starts at 0.

Input:
An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.

Output:
The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.

Note:
If you are given an array with multiple answers, return the lowest correct index.

Problem: Given an array,, return the integer where the array to the left and the array to the right, equal each other. if there is none, return -1

input:
	an array
output:
	an integer

Data Structures:

[1,2,3,4,3,2,1]
answer index = 3
arr.slice[0,3] (works)
arr.slice[0, idx]

arr.slice[idx+1...arr.size]

left = [1,2,3]
right = [1,2,3]

Algorithm:
	-if the sum of the array is 0, return 0

	-Iterate through the array, slicing a portion of the array to the left of the current index and also create a slice of the portion to the right.
		-if their sums are equal
			-return the index.
	
	-return -1

=end


# def find_even_index(array)
# 	if array.sum == 0
# 		return 0
# 	end

# 	array.each_with_index do |num, idx|
# 		if array.slice(0, idx).sum == array.slice(idx+1...array.size).sum
# 			return idx
# 	end
# end
# 	-1
# end

# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6



# def find_all_pairs(array)
# 	hsh = {}
# 	array.each_with_index do |num, idx1|
# 		 (idx1+1...array.size).each do |idx2|
# 				hsh[[array[idx1], array[idx2]]]= [idx1, idx2]
# 		end
# 	end
# 	hsh
# end

# def sum_pairs(array, target)
# 	all_pairs = find_all_pairs(array)
# 	answers = all_pairs.select {|k,v| k.sum == target}

# 	ans = answers.sort_by do |k, v|
# 		v[1]
# 	end	
	
# 	ans.shift[0]
	
# end

# p sum_pairs([11, 3, 7, 5], 10) == [3, 7]
# p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]

# def weirdcase(string)
# 	arr = string.split(' ')
# 	ans = arr.map do |word|
# 		change_word = ''
# 		word.chars.each_with_index do |char, idx|
# 			if idx.odd?
# 				change_word << char.downcase
# 			else
# 				change_word << char.upcase
# 			end
# 		end
# 		change_word
# 	end
# 	ans.join(' ')
# end

# p weirdcase( "String" )== "StRiNg"
# p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"


=begin
You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}:
Your function will return the index 3, because at the 3rd position of the array, the sum of left side of the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

Let's look at another one.
You are given the array {1,100,50,-51,1,1}:
Your function will return the index 1, because at the 1st position of the array, the sum of left side of the index ({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

Note: Please remember that in most programming/scripting languages the index of an array starts at 0.

Input:
An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.

Output:
The lowest index N where the side to the left of N is equal to the side to the right of N. If you do not find an index that fits these rules, then you will return -1.

Note:
If you are given an array with multiple answers, return the lowest correct index.


Problem:
  Given an array of integers, where n is the index. Return n, where the sum of the numbers to the left of n are equal to the sum of the numbers to the right of n. If there are none, return -1.

Rules:
  Explicit:
    -if the sum of the array equals 0, return 0.
    -if there is no idx, return -1
    -An integer array of length 0 < arr < 1000. The numbers in the array can be any integer positive or negative.
    -If you are given an array with multiple answers, return the lowest correct index.
  Implicit:
    -

Examples:
find_even_index([1,2,3,4,3,2,1]) == 3
find_even_index([1,100,50,-51,1,1] == 1
find_even_index([1,2,3,4,5,6]) == -1
find_even_index([20,10,30,10,10,15,35] == 3
find_even_index([20,10,-80,10,10,15,35]) == 0
find_even_index([10,-80,10,10,15,35,20]) == 6


Data Structures:
  -left Array
  -right Array
  -use conditional to compare both arrays
arr = [1,2,3,4,3,2,1]
answer_index = 3
left = [1,2,3]
  #arr.slice(0,idx) (works)
right = [3,2,1]
  #arr.slice(idx+1..arr.size)

Algorithm:
  -if empty return 0

  -iterate through the given array
    -keep track of Index
    -left slice
    -right slice
      -compare the sums of the left to the sum of the right
        -
        -return index if they are equal
  
  - -1

=end

# def find_even_index(array)
#   if array.empty? || array.sum == 0
#     return 0
#   end

#   array.each_with_index do |num, idx|
#     if array.slice(0, idx).sum == array.slice(idx+1..array.size).sum
#       return idx
#     end
#   end

#   -1
# end



# p find_even_index([1,2,3,4,3,2,1]) == 3
# p find_even_index([1,100,50,-51,1,1]) == 1
# p find_even_index([1,2,3,4,5,6]) == -1
# p find_even_index([20,10,30,10,10,15,35]) == 3
# p find_even_index([20,10,-80,10,10,15,35]) == 0
# p find_even_index([10,-80,10,10,15,35,20]) == 6


# def find_all_substrings(array)
# 	(0..array.size).each_with_object([]) do |idx1, arr|
# 		(idx1+1...array.size).each do |idx2|
# 			 arr << [ array[idx1], array[idx2] ]
# 		end
# 	end
# end

# p find_all_substrings([1,2,3,4])


# def find_all_pairs(array)
# 	hsh = {}
# 	(0..array.size).each_with_index do |num, idx1|
# 		 (idx1+1...array.size).each do |idx2|
# 				hsh[[idx1, idx2]]= [ array[idx1], array[idx2] ]
# 		end
# 	end
# 	hsh
# end

# p find_all_pairs([1,2,3,4])

# def minimum_sum(array)
# 	number = array.size-4
# 	answer_arr = []
# 	number.times do |idx|
# 		answer_arr << array.slice(idx, 5)
# 	end
# 	answer_arr.map(&:sum).min
# end

# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16

# def change_case(word)
# 	new_word = word.chars.map.with_index do |char, idx|
# 		if idx.odd? 
# 			char.upcase
# 		else
# 			char
# 		end
# 	end
# 	new_word.join
# end

# def to_weird_case(string)
# 	answer = string.split(' ').map.with_index do |word, index|
# 		if (index + 1) % 3 == 0
# 			change_case(word)
# 		else
# 			word
# 		end
# 	end
# 	answer.join(' ')
# end

# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# 	[0, 1, 2, 3,     4,         5,   6, 7,  8,    9,  10,   11   ]
# 	[1, 2,,3, 4,     5,         6,   7, 8,  9,    10, 11,   12   ]


# def smaller_numbers_than_current(array)
# 	uniq = array.uniq
# 	answer = array.map do |num|
# 		uniq.count{|n| num > n}
# 	end
# 	answer
# end

# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]

# def find_all_pairs(array)
# 	obj = []
# 	array.each_with_index do |num, idx1|
# 		(idx1+1...array.size).each do |idx2|
# 			obj << [array[idx1], array[idx2]]
# 		end
# 	end
# 	obj
# end

# def closest_numbers(array)
# 	arr = find_all_pairs(array)
# 	num = 10**10
# 	smallest_pair = []
# 	arr.each do |sub|
# 			number = (sub[0] - sub[1]).abs
			
# 		if number < num
# 		 	num = number #&& 
# 			smallest_pair = [sub[0], sub[1]]
# 		 end
# 	end
# 	smallest_pair
# end


# p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]

# def least_common_char(string)
# 	small_letter = ''
# 	small_count = 10**10
# 	uniq = string.downcase.chars.uniq
# 	uniq.each do |char|
# 		if string.count(char) < small_count
# 			small_count = string.count(char)
# 			small_letter = char
# 		end
# 	end
# 	small_letter
# end


# p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"

=begin
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

Problem:
	Given a string, return the length of the longest substring of vowels.

Input:
	String
Output:
	Integer

Rules:
	-string is lowercase and alphbetic letter only


solve("codewarriors")== 2
solve("suoidea")== 3
solve("iuuvgheaae")== 4
solve("ultrarevolutionariees")== 3
solve("strengthlessnesses")== 1
solve("cuboideonavicuare")== 2
solve("chrononhotonthuooaos")== 5
solve("iiihoovaeaaaoougjyaw")== 8

Data Structures:
	counter = 0
	longest_streak = 0

Algorithm:
	-place each character into an array
	-iterate through the array
		-if the current character is a vowel
			-increase counter by 1
		-else
			- make longest_streak point to the counter's value (only if counter is greater than longest streak)
			- reset counter to zero
	-return longest_streak

Error:
	extra conditional needed
	-ends in a vowel.
=end

# def solve(string)
# 	counter = 0
# 	longest_streak = 0
# 	string.chars.each do |char|
# 		if 'aeiou'.include?(char)
# 			counter += 1
# 		elsif counter > longest_streak
# 			longest_streak = counter
# 			counter = 0
# 		else
# 			counter = 0
# 		end
# 	end

# 	if counter > longest_streak
# 		counter
# 	else
# 	longest_streak
# 	end

# end

# p solve("codewarriors")== 2
# p solve("suoidea")== 3
# p solve("iuuvgheaae")== 4
# p solve("ultrarevolutionariees")== 3
# p solve("strengthlessnesses")== 1
# p solve("cuboideonavicuare")== 2
# p solve("chrononhotonthuooaos")== 5
# p solve("iiihoovaeaaaoougjyaw")== 8

# def helper(string)
# 	arr = []
# 	(string.size-4).times.with_index do |num, idx|
# 			arr << string[idx, 5]
# 	end
# 	arr
# end

# def greatest_product(string)
# 	nums = helper(string)
# 	products = nums.map do |arr|
# 		arr.chars.map(&:to_i).inject(:*)
# 	end

#   products.max
# end

# p greatest_product("123834539327238239583") == 3240
# p greatest_product("395831238345393272382") == 3240
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("02494037820244202221011110532909999") ==  0



#Given a string, return all substrings

# def find_all_substrings(string)
# 	(0...string.size).each_with_object([]) do |idx1, arr|
# 		(idx1...string.size).each do |idx2|
# 			arr << string[idx1..idx2]
# 		end
# 	end
# end

# find_all_substrings('hello') #[ 'h' ,'he', 'hel','hell','hello','e','el','ell','ello','l','ll','llo','l','lo','o']


# Given an array of numbers, return each possible pair of numbers in the array

# def find_all_pairs(array)
# 	(0...array.size).each_with_object([]) do |idx1, arr|
# 		(idx1+1...array.size).each do |idx2|
# 			arr << [array[idx1], array[idx2]]
# 		end
# 	end
# end

# find_all_pairs([1,2,3,4,5]) #[ [1,2], [1,3], [1,4], [1,5], [2,3], [2,4], [2,5], [3,4], [3,5], [4,5] ]

# #Given an array of numbers, return each possible pair, while keeping track of the index

# def find_all_pairs_with_index(array)
# 	(0...array.size).each_with_object({}) do |idx1, hsh|
# 		(idx1+1...array.size).each do |idx2|
# 			hsh[[idx1,idx2]]=[array[idx1], array[idx2]]
# 		end
# 	end
# end

# p find_all_pairs_with_index([1,2,3,4,5]) # { [0,1] => [1,2], [0,2] => [1,3], [0,3]=>[1,4], [0,4]=>[1,5],[1,2]=>[2,3],[1,3]=> [2,4],[1,4]=> [2,5],[2,3]=> [3,4],[2,4]=> [3,5],[3,4]=> [4,5] }

# def is_prime?(i)
# 	ans_arr = []
# 	1.upto(i).each do |num|
# 		if i%num == 0
# 			ans_arr << num
# 		end
# 	end
# 	ans_arr.size == 2
# end

# p is_prime?(11)
# p is_prime?(6)
# p is_prime?(7)
# p is_prime?(1)



=begin
# Write a method same_char_collapse that takes in a string and 
# returns a collapsed version of the string. 

# To collapse the string, 
# we repeatedly delete 2 adjacent characters that are the same until 
# there are no such adjacent characters. If there are multiple pairs that 
# can be collapsed, delete the leftmost pair first before
# moving onto the next pair. 
  
# For example, we take the 
# following steps to collapse "zzzxaaxy": zzzxaaxy -> zxaaxy -> zxxy -> zy

examples:
same_char_collapse("zzzxaaxy") == "zy"
  -zxaaxy, zxxy, zy
same_char_collapse("uqrssrqvtt") == "uv"
  -uqrrqvtt, uqqvtt, uvtt, uv
same_char_collapse("aabcddce") == "be"
  -bcddce, bcce, be
same_char_collapse("uqrssrqvttu") == "uvu"
  -uqrrqvttu, uqqvttu, uvttu, uvu
=end

=begin

Problem:
  Take a string and return a collapsed version of the string.

Input:
  string
Output:
  string

Rules:
  explicit:
  -delete 2 adjacent characters that are the same until there are no such adjacent characters
  -if there are multiple pairs that can be collapsed, delete leftmost pair first.
  implicit:
  -move from left to right
  -after deleting a repeating pair of char, iterate again from start through mutated word.

examples:
same_char_collapse("zzzxaaxy") == "zy"
  -zxaaxy, zxxy, zy
same_char_collapse("uqrssrqvtt") == "uv"
  -uqrrqvtt, uqqvtt, uvtt, uv
same_char_collapse("aabcddce") == "be"
  -bcddce, bcce, be
same_char_collapse("uqrssrqvttu") == "uvu"
  -uqrrqvttu, uqqvttu, uvttu, uvu

Data Structures:
answer_string = ''
array = answer_string.chars

Algorithm:
  step 1: initialize answer_string to passed in argument
  Step 2: break string into chars and put into an array
  Step 3: iterate through the array, keeping track of the index,
    if the current char and next char are the same, delete both characters.
      reassign answer_string to new deleted word.
      break from iteration.
  Step 4: repeat until no changes are made. return answer_string

=end

# def same_char_collapse(str)
#   ans_str = str
  
#   (str.size/2).times do 
#     arr = ans_str.chars


#   arr.each_with_index do |char, idx|
#     if char == arr[idx+1]
#       ans_str[idx+1] = ''
#       ans_str[idx] = ''
     

#       break
#     end
#   end
#   end
#   ans_str
# end

# p same_char_collapse("zzzxaaxy") == "zy"
# p same_char_collapse("uqrssrqvtt") == "uv"
# p same_char_collapse("aabcddce") == "be"
# p same_char_collapse("uqrssrqvttu") == "uvu"


def mixedup(string)
  ans_arr = []
  word_one = ''
  word_two = ''
  string.chars.each_with_index do |char, idx|
    if idx.even?
      word_one << char
    else
      word_two << char
    end
  end
  ans_arr = [word_one, word_two]
end