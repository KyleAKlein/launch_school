=begin

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# Problem

Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Can you reuse blocks? no, each block can only be used once.
Case-sensitive? no.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

input: string
output: boolean

Data Structure:

hash containing a key that points to a block.

Algorithm:

1. string
2. separate characters in string.
3. iterate thru characters.
4. if character matches block, remove block. (selection)

part 2:

1. if letter is in array, dont allow using any this array.

=end

BLOCK_LETTER = {
0 => ['B','O'], 1 => ['X','K'] , 2 => ['D','Q'], 3 => ['C','P'], 4 => ['N','A'],
5 => ['G','T'], 6 => ['R','E'], 7 => ['F','S'], 8 => ['J','W'], 9 => ['H','U'], 10 => ['V','I'],
11 => ['L','Y'], 12 => ['Z','M']
}


VAL = BLOCK_LETTER.values

def helper(l)
  VAL.each do |arr|
    arr.each_with_index do |letter, i|
      if letter == l
        VAL.delete_at(i) 
        return true
      elsif letter != l
        next
      end
    end
  end
  return false
end

def block_word?(string)
  answer = string.upcase.chars.map do |letter|
   helper(letter)
    end
  
  if answer
    true
  else
    false
  end
end

# p block_word?('JEST') == true
# p block_word?('BATH') == true
p block_word?('BUTCH') == false
