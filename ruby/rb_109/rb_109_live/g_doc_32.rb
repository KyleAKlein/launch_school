=begin
6 kyu
Given a string of words, you need to find the highest scoring word.
Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
You need to return the highest scoring word as a string.
If two words score the same, return the word that appears earliest in the original string.
All letters will be lowercase and all inputs will be valid.
=end

array = ('a'..'z').to_a

def high(string)
  score = 0
  word_score = 0
  answer_word = ''

  array = ('a'..'z').to_a
  string.split.each do |word|
    word.split('').each do |letter|
      word_score += array.index(letter)+1
    end
    if word_score > score
      score = word_score
      answer_word = word
    end
    word_score = 0

  end

  answer_word
end  
      
      

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'