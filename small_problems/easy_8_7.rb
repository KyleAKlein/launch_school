def repeater(string)
  new_word = []
  string.chars.each do |n|
    new_word << n * 2
  end
  new_word.join('')
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''