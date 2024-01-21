def crunch(string)
  ans = string.split('')
  answer = []
  ans.each do |letter|
  answer << letter if letter != answer.last
  end
  answer.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''