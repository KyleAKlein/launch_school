=begin
6 kyu

Given a string, return a new string that has transformed based on the input:
Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.

Note: You will have to handle multiple spaces, and leading/trailing spaces.

Problem:
Take a string and reverse every case, upper to lower and lower to upper and also reverse the order of the words.

Input: String
Output: String

Example:

"Example Input" ==> "iNPUT eXAMPLE"

Data Structures:


Algorithm:
1. Reverse the order of the words.
  >> .split(' ')  .reverse
2. Change the case of each letter.
  >> .chars .each .upcase or .downcase
3. return new string.
  >>   new_string << letter


You may assume the input only contain English alphabet and spaces.

=end

def flipflop(string)
  new_string = ''

  flipped = string.split(' ').reverse.join(' ')

  flipped.chars.each do |letter|
    if letter == letter.upcase
      letter = letter.downcase
    else
      letter = letter.upcase
    end
    new_string << letter
  end

  new_string
end


p flipflop("Example Input") == "iNPUT eXAMPLE"