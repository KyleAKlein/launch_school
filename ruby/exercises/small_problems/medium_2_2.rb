=begin

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not use both letters from any given block. Each block can only be used once.


Problem:
  Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

Can you reuse blocks? no, each block can only be used once.
Case-sensitive? no.

Input:
  string
Output:
  boolean

Rules:
  Explicit:
    -Blocks can only be used once.
    -Not case-sensitive
  Implicit:
    -either side of the block

Examples:
  p block_word?('BATCH') == true
  p block_word?('BUTCH') == false
  p block_word?('jest') == true

Algorithm:  
  Step1: Turn blocks into a nested array.
  Step2: iterate through the string
  Step3: If char is not found in the arrays, return false
  Step4: if char is found remove sub-array containing char
  Step5: return true if all chars found.










=end

ARRAY = "B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M".split(' ').map do |block|
  [block]
end

def block_word?(string)
  string.upcase.chars.each do |char|
    start = ARRAY.size
    p start
    ARRAY.each do |array|
      if array[0].include?(char)
        ARRAY.delete(array)
      else
        next
      end
    end

    p ARRAY.size
    if start == ARRAY.size
      return false
    end

  end
  true
end




# p block_word?('BATCH') == true
# p block_word?('BUTCH') == false
p block_word?('jest') == true



=begin

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


Algorithm:






# BLOCK_LETTER = {
# 0 => ['B','O'], 1 => ['X','K'] , 2 => ['D','Q'], 3 => ['C','P'], 4 => ['N','A'],
# 5 => ['G','T'], 6 => ['R','E'], 7 => ['F','S'], 8 => ['J','W'], 9 => ['H','U'], 10 => ['V','I'],
# 11 => ['L','Y'], 12 => ['Z','M']
# }


# VAL = BLOCK_LETTER.values

# def helper(character)
#   VAL.each do |arr|
#     arr.each_with_index do |letter, i|
#       if letter == character
#         VAL.delete_at(i) 
#         return true
#       elsif letter != character
#         next
#       end
#     end
#   end
#   return false
# end

# def block_word?(string)
#   answer = string.upcase.chars.map do |letter|
#    helper(letter)
#     end
  
#   if answer
#     true
#   else
#     false
#   end
# end

BLOCKS = ['B:O', 'X:K', 'D:Q', 'C:P', 'N:A', 'G:T', 'R:E', 'F:S', 'J:W', 'H:U', 'V:I', 'L:Y', 'Z:M']


#New solution

def block_word?(string)
  new_block = BLOCKS.clone
  new_block.each_with_index do |x|
     string.each_char do |char|
      if x.include?(char)
        
      end
    end
  end

  
  p BLOCKS
  p new_block
end


# p block_word?('JUST') == false
block_word?('BATH') == true
# p block_word?('SUCH') == false
=end