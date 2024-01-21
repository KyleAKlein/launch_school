=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings or false if you do not. We only care about substrings that are longer than one letter long.

substring_test('Something', 'Fun') == false
substring_test('Something', 'Home') == true
substring_test('Something', 'Fun') == false
substring_test('Something', '') == false
substring_test('', 'Something') == false
substring_test('BANANA', 'banana') == true
substring_test('test', 'lllt') == false
substring_test('', '') == false
substring_test('1234567', '541265') == true
substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true

Problem:
  You are given two strings, return true if there is a substring that appears in both strings, false otherwise.

Input:
  Two Strings
Output:
  Boolean

Rules:
  Explicit:
    -substring must be longer than 1 character
  Implicit:
    -case doesn't matter

Examples:
substring_test('Something', 'Fun') == false
  -only substring match is 'n', but doesn't work since only 1 character
substring_test('Something', 'Home') == true
  - substring 'ome'
substring_test('Something', 'Fun') == false
  -
substring_test('Something', '') == false
  -empty substring returns false
substring_test('', 'Something') == false
  -empty substring returns false
substring_test('BANANA', 'banana') == true
  -case doesn't matter
substring_test('test', 'lllt') == false
  -
substring_test('', '') == false
  -two empties equal false
substring_test('1234567', '541265') == true
  -'12' treat integers as strings
substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true
  -ocious

data structures:


algorithm:
helper_method
  - find all substrings of first string and second string


-select all substring greater than 1 in size
-iterate through  
- if second string includes any substring, return true, false otherwise.

=end

def substring_test(string1, string2)
  valid_arrays = get_subs(string1.downcase).select {|word| word.size>1}
  valid_arrays.each do |word|
    if get_subs(string2.downcase).include?(word)
      return true
    end
  end
  false
end

def get_subs(string)
  ans_arr = []
  (0...string.size).each_with_index do |char, idx1|
    (idx1...string.size).each do |idx2|
      ans_arr << string[idx1..idx2]
    end
  end
  ans_arr
end



p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true







=begin
Pseudo-Code:
  Off the bat, if one of the strings has less than 2 characters, return a false.
  Find the shorter word and create an array of all possibly substrings. (You can use a helper method for this)
  Find out if the longer string includes any of the substrings.
  return true if thats the case.
  
Data Structures:
  -Helper Method:

Algorithm:
  Step1: find length of both strings, if less than 2 return false.
    .size < 2 
  Step2: Create an array of all possible substrings for the shorter word. (helper method)

  Step3: find out if longer string includes any of the substrings.
  Step4: return true if thats the case.

  Helper Method:
    Step 1: slice the string.
    Step2: drop the last letter.
    Step3: move to next start letter.




# def substring_test(string1, string2)
#   string1 = string1.downcase
#   string2 = string2.downcase
#   if string1.size || string2.size < 2
#     false
#   end

#   if string1 <= string2
#     array = helper(string1)
#   else
#     array = helper(string2)
#   end

#   array.each do |substring|
#     if string1.include?(substring)
#       return true
#     end
#   end

#   false
# end

# def helper(string)
#   substring_array = []
#   start = 0
#   length = string.size
#   loop do 
#     substring_array << string.slice(start, length)
#     length -= 1
#     if length == 0
#       start += 1
#       length = string.size - start
#     end
#     break if start == string.size
#   end

#   answer = substring_array.uniq.select {|x| x.size > 1}
#   answer
# end



# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true

=end