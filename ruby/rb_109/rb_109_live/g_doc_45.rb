=begin
6 kyu
The alphabetized kata
Re-order the characters of a string, so that they are concatenated into a new string in "case-insensitively-alphabetical-order-of-appearance" order. Whitespace and punctuation shall simply be removed!
The input is restricted to contain no numerals and only words containing the english alphabet letters.
Example:
alphabetized("The Holy Bible") # "BbeehHilloTy"

Problem:
  Reorder a string so that they are concatenated into a new string, in case-insensitive order. Remove whitespace and punctuation.

Input:
  String

Output:
  new String

Rules:
  Explicint:
    -Remove white space.
    -Remove punctuation.
  Implicint:
    -order of same letter Capital vs lowercase shall be order of their appearance

Examples:
  alphabetized("The Holy Bible") # "BbeehHilloTy"
    # order of same letter Capital vs lowercase shall be order of their appearance
  alphabetized("") == ""
    # empty string return new empty string
  alphabetized(" ") == ""
    # remove white space
  alphabetized(" a") == "a"
    # remove white space
  alphabetized("a ") == "a"
    # remove trailing white space
  alphabetized(" a ") == "a"
    # remove all white space
  alphabetized("A b B a") == "AabB"
    # Order of appearance observed
  alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"
    # Order of apperance obeserved

Data Structures:
  new string:
    answer = ''
  -
    
Algorithm:
  Step 1: remove whitespace from string.
    - .strip
  Step 2: separate all characters inside an array.
    - .chars
  
  Steps 3. downcase all letters
    - .sort


Errors:
  - .sort sorts array into ["A", "B", "a", "b"] instead of ["A", "a", "b", "B"]
    fix: 

=end

def alphabetized(s)
  alphabet = ("a".."z").to_a
  string = ""

  alphabet.each do |alpha|
    s.each_char do |char|
      if alpha == char.downcase
        string += char
      end
    end
  end
  return string
end
 
# p alphabetized("") == ""
# p alphabetized(" ") == ""
# p alphabetized(" a") == "a"
# p alphabetized("a ") == "a"
# p alphabetized(" a ") == "a"
p alphabetized("AbBa") == "AabB"
# p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"