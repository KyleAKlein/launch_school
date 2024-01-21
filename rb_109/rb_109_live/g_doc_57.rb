=begin
6 kyu
In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Problem:
  You are given a string and are to return a hash with the letter count as the value and the letter as the key.

Input:
  String
Output:
  Hash

Rules:
  Explicint:
  Implicint:
    -letter must be symbols.

Examples:

letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Algorithm:

  Step 1:
    seperate the string into individual characters
    #=> .chars
  Step 2:
    iterate through the string, creating a hash symbol for the letter and assigning a value of 1.
    #=> .each_with_object
  Step 3:
    if letter exists, add 1 to count.
  Step 4:
    return object.
  


=end

def letter_count(string)
  answer = string.chars.each_with_object({}) do |char, hash|
    if hash[char.to_sym]== nil
      hash[char.to_sym] = 1
    else
      hash[char.to_sym] += 1
    end
  end
  answer
end

p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
