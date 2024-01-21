# =begin
# # Write a method named to_weird_case that accepts a string, and
# # returns the same sequence of characters with every 2nd character
# # in every third word converted to uppercase. Other characters
# # should remain the same.

# # Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# # The tests above should print "true".

# Problem:
#   Take a string and change every 2nd character in every third word to uppercase. Leave other characters the same.

# Input:
#   String
# Output:
#   String

# Questions:
#   Am I returning the same string?
#   A: Yes.

# Rules:
#   Explicit:
#     -Change the 2nd letter of every 3rd word to upcase.
#   Implicit:
#     -Every 2nd letter means every odd index (or every "other" letter)
#     -third word is one-letter, no change
#     -case in 3rd word, stay the same


# Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
#     -Every 2nd letter means every odd index (or every "other" letter)
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
#   -third word is one-letter, no change.
#   -
# p to_weird_case('aaA bB c') == 'aaA bB c'
#   -return string if no change.
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'
#     -case in 3rd word, stay the same

# Data Structures:

# Approach: (Pseudo-Code)
#   -Break up the string into an array of words. Use map. For the every 3rd word or index (2 += 3), break word into chars and iterate through chars. if index is odd upcase the char. combine the chars and return the new word to the map method.

# Algorithm:
#   Step1: Break up string into an array of words.
#   - .split and .map (doesn't work for idx)
#   Step2: Every 3rd word break word in chars.
#   - .split('')
#   Step3: iterate through chars.
#   - .each_with_index
#   Step4:  change case if char is idx is odd
#   -
#   Step5: combine
#   - .join

# =end



# def to_weird_case(string)
#   array = []
#   counter = 1
#   answer = string.split(' ')
#   answer.map! do |word|
#     if counter % 3 == 0
#       counter += 1
#       array = word.chars

#       array.each_with_index do |x, i|
#         if i.odd?
#           array[i]= array[i].upcase
#         end
#       end

#     array.join

#     else
#       counter += 1
#       word
#     end
    
#   end
#   answer.join(' ')
# end

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'




=begin
# Capitalize each distinct character in a string, however, only its second to last occurrence. 
# If the character occurs only once in a string, leave it unchanged.

Question:
  Distinct means unique characters.

  "hello" = 4 distinct characters


Problem:
  Given a string, capitalize each distinct char, however only its second to last occurance.

Input:
  String
Output:
  String

Rules:
  Explicit:
    -cap each distinct char, only its second to last occurance.
    -If the character occurs only once in a string, leave it unchanged.
  Implicit:
    - empty returns empty string
    -if only one occurance do not change.

# Examples:

p funny_string("") == ""
  -empty returns empty
p funny_string("aa") == "Aa"
  -second to last occurence is cap.
p funny_string("launchschool") == "LaunCHschOol"
  -if only one occurance do not change.
p funny_string("assessments") == "assEsSments"

Data Structures:
array
 b
Approach (Pseudo-Code):
    Break the string up into an array of individual char.
    if i do count and its less than 2 then do nothing.
      if more than 2 uppercase the second to last occurance.

    If I am iterating through the string, i need to count each letter of the given letter (letter that i need to cap), once i arrive at the second to last, make cap.
    map.
    

Algorithm:
  Step1: Break up string into chars.
    # .chars
  Step2: Iterate through array.
    # .each
  Step3: if count of (char) is more than 1.
    # cap 2nd to last occurance.
  Step4: return string.
  -

count each occurance of letter.

# The tests above should print "true".


Algorithm:
        Step 1: select all chars with count greater than 1.
        Step2: get count of each letter
        Step3: cap second to last
        Step4: create a hash. and push these into a hash.

        Step5: Iterate through orig string. count selected char. upcase when count is 1 lesss than max.

=end

def funny_string(string)
  array = string.chars
  hash = {}
  selected_chars = array.select {|x| array.count(x) >1}
  selected_chars.uniq.each do |char|
    hash[char]=selected_chars.count(char)
  end
  
  
  answer = array.each do |char|
    hash.keys.each do |letter|
      if letter == char
        hash[letter] -= 1
      end
    end
    if hash[char]==1
      char.upcase!
    end
  end

  answer.join
end

p funny_string("") == ""
p funny_string("aa") == "Aa"
p funny_string("launchschool") == "LaunCHschOol"
p funny_string("assessments") == "assEsSments"


# Goal: zero hack/slash
# If you can't solve the problem by talking about it 

# Gather data.
# Manipulate data.
