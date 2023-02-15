=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

Problem:
From a string, return the longest vowel substring in integer form.

count

=end

def solve(string)
  count = 0
  array = []
  chars = string.chars
  chars.each do |letter|
    if "aeiou".include?(letter)
      count += 1
      next
    else
      array << count
      count = 0
      next
    end
  end

  array << count
  array.uniq.sort[-1]
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8



=begin (11/19/22)
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2. Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

Problem:
  Given a string, return an integer of how many chars the longest vowel substring is.

Input:
  string
Output:
  integer

Rules:  
  Explicit:
    -Input string is lowercase
    -String is only alphabetic chars.
    -no spaces
  Implicit:
    -

Data Strucutres:
  - string of all vowels
  -variable for current vowel substring
  array of all substrings containing only vowels

Algo:
  -create current vowel substring
  -create all vowels variable
  -break input string into individual chars and put into an array
  -iterate through this array
  -if the current character is a vowel
    -push this char into current vowel substring
  -otherwise
    -push current vowel substring into ans array
    -reset current vowel substring
  -outside the iteration push into the ans array the current vowel substring
  -transform the ans arr from the substrings into the size of each substring
  -return the largest integer

=end

def solve(string)
  cur_vowel_substr = ''
  vowels = 'aeiou'
  ans_arr = []
  string.chars.each do |char|
    if vowels.include?(char)
      cur_vowel_substr << char
    else
      ans_arr << cur_vowel_substr
      cur_vowel_substr = ''
    end
  end

  ans_arr << cur_vowel_substr

  ans_arr.map(&:size).max

end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5 
p solve("iiihoovaeaaaoougjyaw") == 8
