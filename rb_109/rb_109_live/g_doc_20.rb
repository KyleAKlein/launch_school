=begin
Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.
The characters should be sorted alphabetically e.g:
get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones.
=end

def get_char_count(string)
  downs = string.downcase.delete('^a-z0-9')
  hash = {}
  sorted = downs.chars.sort.join

  sorted.chars.uniq.each do |x|
    if hash[sorted.count(x)] == nil
      hash[sorted.count(x)] = [x]
    else
      hash[sorted.count(x)].push(x)
    end
  end

  hash
end


p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}


# 11/25/22
=begin
Write a method that takes a string as an argument and groups the number of times each character appears in the string as a hash sorted by the highest number of occurrences.
The characters should be sorted alphabetically e.g:
get_char_count("cba") => {1=>["a", "b", "c"]}
You should ignore spaces, special characters and count uppercase letters as lowercase ones. 

PROBLEM:
  Given a string, return a hash where the key is the number of times the character appears and the value is all the characters.
INPUT:
  String
OUTPUT:
  Hash, key-integer, value-array of chars.
RULES:
  EXPLICIT:
    -Sort the hash by highest number of occurances
    -key is the number of occurances
    -value is an array of the characters with that number of occurances
    -Characters should be sorted alphabetically
    -ignore spaces, special characters,
    -count upper and lower case
  IMPLICIT:
    -ignore special chars.
    -
DATA STRUCTURES:
  -varible of the string minus all unexcessary characters, in lowercase
  -string in an array
  -array of unique chars

APPROACH:
  Take the input string and remove any characters that are not alphanumeric, and downcase this string. Place individual characters into an array and sort them alphabetically. Create a variable that is the unique characters of this array and Iterate through an array of uniq characters. Make the count the key and add the current letter to the value of the key-count
    -sort by key in descending order

ALGORITHM:
  -create a variable of the input string without spaces and special characters, downcase this string
  -create a variable with the string of individual chars in an array
  -create a variable of unique chars of this array
  -iterate through the uniq var, creating an object (hash)
    -get a count of the current char, in the original var arr.
      -make this the object's key
        -make the count the current char
    
  -sort the object by descending  key order.




def get_char_count(string)
  clean_str = string.delete('^a-zA-Z0-9').downcase
  str_arr = clean_str.chars
  uniq_arr = str_arr.uniq.sort
  
  obj = uniq_arr.each_with_object({}) do |char, obj| 
    if obj[str_arr.count(char)].nil?
      obj[str_arr.count(char)] = [char] 
    else
      obj[str_arr.count(char)] = obj[str_arr.count(char)] + [char]
    end

  end
  
  p obj

end


# p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}

