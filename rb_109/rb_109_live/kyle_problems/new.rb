=begin

# Easy:

  Q1:

    In this kata, you've to count lowercase letters in a given string and return the letter count in a hash with 'letter' as key and count as 'value'. The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.
  
    letterCount('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

  Q2: https://www.codewars.com/kata/5c55ad8c9d76d41a62b4ede3/train/ruby

  Q3: https://www.codewars.com/kata/5168b125faced29f66000005/train/ruby

    Q4: https://www.codewars.com/kata/53a452dd0064085711001205

  Q5: https://www.codewars.com/kata/585d7d5adb20cf33cb000235

  Q6: https://www.codewars.com/kata/54da5a58ea159efa38000836

  Q7: https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

  Q8: https://www.codewars.com/kata/5878520d52628a092f0002d0

  Q9: https://www.codewars.com/kata/529eef7a9194e0cbc1000255


# Medium:

  Q1: 
    
    Write a method that takes an array of integers and returns the two numbers that are closest together in value.

    Examples:

    p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
    p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
    p closest_numbers([12, 7, 17]) == [12, 7]

    The tests above should print "true".

  Q2:

    Write a method that takes a string as an argument and returns
    the character that occurs least often in the given string.
    If there are multiple characters with the equal lowest number
    of occurrences, then return the one that appears first in the
    string. When counting characters, consider the uppercase and
    lowercase version to be the same.

    Examples:

    p least_common_char("Hello World") #== "h"
    p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
    p least_common_char("Mississippi") #== "m"
    p least_common_char("Happy birthday!") #== ' '
    p least_common_char("aaaaaAAAA") #== 'a'

    The tests above should print "true".
    
    Q3: https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby
    Q4: https://www.codewars.com/kata/55c04b4cc56a697bb0000048
    Q5: https://www.codewars.com/kata/545cedaa9943f7fe7b000048
    Q6: https://www.codewars.com/kata/5491689aff74b9b292000334
    Q7: https://www.codewars.com/kata/58039f8efca342e4f0000023
    Q8: https://www.codewars.com/kata/514b92a657cdc65150000006
    Q9: https://www.codewars.com/kata/59c7e477dcc40500f50005c7
    Q10: https://www.codewars.com/kata/56b861671d36bb0aa8000819
    Q 11: https://www.codewars.com/kata/5970df092ef474680a0000c9
    Q 12: https://www.codewars.com/kata/51f41fe7e8f176e70d0002b9
  Q 13: https://www.codewars.com/kata/57eb8fcdf670e99d9b000272
  Q14: https://www.codewars.com/kata/5b1b27c8f60e99a467000041
  Q 15: https://www.codewars.com/kata/57f8ff867a28db569e000c4a


# Hard:

Q1: https://www.codewars.com/kata/5a946d9fba1bb5135100007c
Q2: https://www.codewars.com/kata/59da47fa27ee00a8b90000b4
Q3: https://www.codewars.com/kata/546f922b54af40e1e90001da
Q4: https://www.codewars.com/kata/5526fc09a1bbd946250002dc
Q5: https://www.codewars.com/kata/5839edaa6754d6fec10000a2
Q6: https://www.codewars.com/kata/5727bb0fe81185ae62000ae3
Q7: https://www.codewars.com/kata/58f5c63f1e26ecda7e000029
Q8: https://www.codewars.com/kata/523a86aa4230ebb5420001e1
Q9: https://www.codewars.com/kata/5842df8ccbd22792a4000245
Q10: https://www.codewars.com/kata/554ca54ffa7d91b236000023



=begin

Your task is to Reverse and Combine Words. It's not too difficult, but there are some things you have to consider...

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
   (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result... 

Input:  "abc def"
Output: "cbafed"

Input:  "abc def ghi 123"
Output: "defabc123ghi"

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"

Problem: Take the input string and reverse each word and combine first with second, third with fourth, etc. until there is one string left.

Input: String
Output: String 

Rules: 
  Explicit:
    - for more than one word, 
      - reverse each word, concatenate first word to the second word, third with fourth, etc 
      - if there are an odd number of words:
        - reverse last word, but do not concatenate 
    - repeat process until one string is forme
    - return the string 
  Implicit: 
    - if input string is one word, return that word 

reverse_and_combine_text("abc def") == "cbafed"
reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
# cbafed, ihglkj
# defabcjklghi
reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
# 45hh43255435, trzwqfdsrttetrt, 21lllllhjhjh44
# 53455234hh54trtettrsdfqwzrt, 44hjhjlllll12
reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

Explicit:
    - for more than one word, 
      - reverse each word, concatenate first word to the second word, third with fourth, etc 
      - if there are an odd number of words:
        - reverse last word, but do not concatenate 
    - repeat process until one string is formed
    - return the string 
  Implicit: 
    - if input string is one word, return that word 
  
Steps: 
  - split input array into words in `word_arr` array 
      - if `word_arr` contains only only one word return the word 
  - iterate through `words_arr` and reverse each word into `rev_words`
  - 


=end 

# def rev_words(array)
#   array.map { |word| word.reverse }
#  end
 
#  def reverse_and_combine_text(str)
#    words_arr = str.split
#    if words_arr.size == 1
#      return str
#    end 
 
#    p rev_words(words_arr)
   
   
#  end 
 
#  def combine(arr)
#    ans = []
#    if arr.size.even?
#      arr.split.each_with_index do |word, idx|
#        if idx.even?
#          ans << arr[idx] + arr[idx+1]
#        end
#      end
#    else
#      arr.split.each_with_index do |word, idx|
#        if word[idx] == arr[-1]
#          ans << word
#        elsif idx.even?
#          ans << arr[idx] + arr[idx+1]
#        end
#      end
#    end
#    ans
#  end
 
#  p combine("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44")
 # reverse_and_combine_text("abc def") == "cbafed"
 # reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
 # p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
 # p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
 # reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

 


#  def find_missing_letter(arr)
#   alpha = ('a'..'z').to_a
#   alpha_idx = alpha.index(arr[0])
#   ans = ''
  
#   arr.each_with_index do |char, idx|
#     if arr[idx+1] == alpha[alpha.index(char.downcase) +1]
#       next
#     else
#       ans << alpha[alpha.index(char.downcase)+1]
#       break
#     end
#   end
  
#   if arr[0] == arr[0].upcase
#     ans.upcase
#   else
#     p ans
#   end
      
  
# end

# p find_missing_letter(["a","b","c","d","f"]) ==  "e"
# p find_missing_letter(["O","Q","R","S"]) == "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"
# p find_missing_letter(["b","d","e"]) ==  "c"

=begin

Problem: Given a scrambled word and an array of words, return an array of all the words that the scrambled word could be.

Input: string, and an array
Output: string in an array

Rules:
  Explicit:
    -if no matches return an empty string
  Implicit:
    -
  
Data Structures:
  -chars_arr
  -ans_arr = 

Algo:
  -break input string into indiviudal character and put into an array

  -iterate through the input array
    -break current word into individual characters 
      -iterate through each character
          -if all chars counts in the input string match the given string, push word into answer string
          -break out of this iteration and move on to the next word.
    -



=end

def grabscrab(string, array)
  chars_arr = string.chars
  ans_arr = []

  array.each do |word|
    if word.chars.all? { |letter| string.count(letter) == word.count(letter) }
      ans_arr << word
    else
      next
    end
  end
  
  ans_arr


end

p grabscrab("trisf", ["first"]) == ["first"]
p grabscrab("oob", ["bob", "baobab"]) == []
p grabscrab("ainstuomn", ["mountains", "hills", "mesa"]) == ["mountains"]
p grabscrab("oolp", ["donkey", "pool", "horse", "loop"]) == ["pool", "loop"]
p grabscrab("ortsp", ["sport", "parrot", "ports", "matey"]) == ["sport", "ports"]
p grabscrab("ourf", ["one","two","three"]) == []
