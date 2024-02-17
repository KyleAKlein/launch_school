# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:



# The tests above should print "true".

=begin

Problem:
  Take a string and return the same sequence of characters with every 2nd character in every third word coverted to uppercase. Other characters stay the same.
    -2nd letter every 3rd word

Input:
  String
Output:
  string

Question:
  -Is the string the same string?

Rules:
  Explicit:
    -Do not change characters that aren't suppose to change.
  Implicit:
    -If word has only 1 letter do not alter.
    -if conditions aren't met, do not change.
    --Its every 2nd letter in the entire word that is uppercase, not just the first occurance.

Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
  -nothing to note
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
  - if third word has only one letter, do not alter
p to_weird_case('aaA bB c') == 'aaA bB c'
    -if conditions aren't met, do not change.
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
  -Its every 2nd letter in the entire word that is uppercase, not just the first occurance.

Data Structures:
arrays

Algorithm:
  Step1:
    take string, break into individual words
  Step2:
    every third word; swapcase of every even letter of entire word.
  Step3:
    return string.

=end
def to_weird_case(string)
  array = string.split(' ')
  counter = 0
  answer = array.map do |word|
    if (array.index(word)+1) % 3 == 0
      
      words = word.split('').map do |char|
        counter += 1
        #p (word.index(char)+1)
        if counter.even?
          char.swapcase
        else
          char
        end
        
      end
      counter = 0
      words.join('')
      
    else
      word
    end
    
  end
  answer.join(' ')
end


p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'



#NOTES:
# Problems:
#   couldn't use index with map.
# had to use counter
# DIdn't reset counter at the end of iteration.
