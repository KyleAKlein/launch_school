=begin
6 kyu
The goal of this exercise is to convert a string to a new string where each character in the new string is "(" if that character appears only once in the original string, or ")" if that character appears more than once in the original string. Ignore capitalization when determining if a character is a duplicate.
Examples
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))(("


Problem: Convert a string to a new string where each character in the new string is a parenthesis "(" if that character appears once in the string or a ")" if that character appears more than once in the original string.

Input: string
Output: new string consisting of parenthesises "(" ")"



Rules:
  Explicit:
  -Ignore capitalization.
  Implicit:
  -Spaces count as characters
  

Examples:
p duplicate_encode("din") == "((("
# If no character repeats then answer contains only one-side of parenthesis.
p duplicate_encode("recede") == "()()()"

p duplicate_encode("Success") == ")())())"
#capital letters don't matter, and parenthesis can begin with the closed-parenthesis

p duplicate_encode("(( @") == "))(("
#spaces count as characters.

Data Structures:
new_string

Algorithm:
Step 1: break string into individual characters
  => .chars
Step 2: Iterate through characters
  => .each
Step 3: If current character count in string is greater than 1, push "close-parenthesis" into new_string.
  => <<
  Step 3.a: Otherwise push an open "(" parenthesis into new_string
Step 4: Return new_string

=end

def duplicate_encode(string)
  new_string = ''
  string.downcase.each_char do |char|
    if string.count(char) > 1
      new_string << ')'
    else
      new_string << '('
    end
  end
  new_string

end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
