
def longest_word(sentence)
  words = sentence.split
  saved_word = words.shift

  words.each do |word|
    if word.length >= saved_word.length
      saved_word = word
    end
  end

  saved_word
end

longest_word("The quick brown fox jumped over the sleeping cow.")

