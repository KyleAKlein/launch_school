=begin
6 kyu
Sort the given strings in alphabetical order, case insensitive. For example:
["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]

Problem: sort an array of strings into alphabetical order.

Input:

=end

def sortme(array)
  sorted = array.sort do |word, word2|
    word[0].downcase <=> word2[0].downcase
  end
  p sorted
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]

