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