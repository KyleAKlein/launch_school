=begin
527

In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.
 
1.  The input string will always be lower case but maybe empty.

2.  If the character in the string is whitespace then pass over it as if it was an empty seat

Problem: Take the input string and return an array of multiples of the input string where each word has the next letter capitalized.

Input: String
Output: Array 

Rules: 
- Explicit:
  - input string always downcased or empty
  - if the character in the string is whitespace, pass over it 
- Implicit:

Examples:

Data structures:
  helper
    -find_white_spaces
    -break string into individual characters
    - iterate through the input string, keeping track of the index
      -if the current character is a whitespace
        -push current index into answer_arr
      -
    

Algo:

    -repeat following code the same number of times as the length of the input string.
      -if the string is empty, return the ans array
      - otherwise
        -take input string and upcase the count passed into the input string as elemental reference
          -shovel this word into an answer array
        -increase count by 1.
    -return ans_string


=end

wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]

wave("") == []

wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]

wave(" gap ") == [" Gap ", " gAp ", " gaP "]