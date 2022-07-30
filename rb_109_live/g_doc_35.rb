=begin
6 kyu
In this simple Kata your task is to create a function that turns a string into a Mexican Wave. You will be passed a string and you must return that string in an array where an uppercase letter is a person standing up.

Rules
1.  The input string will always be lower case but maybe empty.
2.  If the character in the string is whitespace then pass over it as if it was an empty seat.

Problem: Take a string and output an array where each element is the string but a letter is capitalized and each element moves the capital letter through the string.

Input: string
Output: array of strings

Examples:
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
#normal

p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
#normal

p wave("") == []
#empty string returns empty array

p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
#two words are treated as one word

p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
# whitespaces are ignored but kept

Algorithm:
Step 1: break word into characters
  #=> .chars

Step 2: iterate through letters
  #=> .each

Step 3: upcase correct letter
  #=> 


=end


def wave(string)
  counter = 0
  array = []
  word = ''
  
  string.size.times do 
    string.chars.each_with_index do |letter, i|
      if letter == ''
        next
      elsif i == counter
        word << letter.upcase
      else
        word << letter
      end
    end
    
    if word.count("ABCDEFGHIJKLMNOPQRSTUVWXYZ") > 0
      array << word
      counter += 1
      word = ''
    else
      counter += 1
      word = ''
    end

  end

  array
end

p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]
