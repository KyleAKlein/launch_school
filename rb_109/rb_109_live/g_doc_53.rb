=begin
6 kyu
Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and returns the same string with all even indexed characters in each word upper cased, and all odd indexed characters in each word lower cased. The indexing just explained is zero based, so the zero-ith index is even, therefore that character should be upper cased.
The passed in string will only consist of alphabetical characters and spaces(' '). Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

Problem:
  Accept a string and return the same string where every even-indexed character is upcased and every odd-indexed character is downcased.

Input:
  string
Output:
  self

Rules:
  Explicint:
    -Index is zero-based.
    -Zero is even
  Implicint:
    -Spaces count

Examples:
  weirdcase( "String" ) == "StRiNg"
    - Basic Example
  weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
    - Count whitespace

Data Structures:
  -String must be mutated

Algorithm:
  Step0 : break string into individual characters and put inside an array
    # .chars
  Step1: Iterate through string
    # .each_with_index
  Step2: If index is even, make character uppercase, downcase otherwise.
    # .upcase .downcase
  Step3: Join string back together
    # .join



=end

def weirdcase(string)

  string.chars.each_with_index do |char, i|
    p char
    if char == ' '
      string[i] = ''
    elsif i % 2 == 0 
      string[i]= char.upcase!
    else
      string[i]= char.downcase!
    end
  end

  p string

end

p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"
