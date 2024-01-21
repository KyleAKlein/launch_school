=begin
6 kyu
Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"
Your task is to process a string with "#" symbols.
Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""


Problem:
Assume "#" is like a backspace. Return the given string with the # characters treated like backspaces.

Input: String
Output: String

Rules:
  Explicint:

  Implicint:

Examples
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

=end

def clean_string(string)
  new_string = string.chars
  new_word = ''
  new_string.each_with_index do |char, i|
    if char != '#'
      new_word << char
    else
      new_word.delete!(new_word[-1])
    end
  end

  new_word
end

p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""
p clean_string("abc#d##c") == "ac"
p clean_string("abc##d######")  ==  ""
p clean_string("#######") == ""
p clean_string("") ==  ""