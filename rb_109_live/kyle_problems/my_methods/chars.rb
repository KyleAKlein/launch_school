# def my_chars(str)
#   number = str.size-1
#   arr = []
#   0.upto(number) do |n|
#     arr << str[n]
#   end
#   p arr
# end

# p my_chars('hello') == ['h', 'e', 'l', 'l', 'o']

# def my_concat(str1, str2)
#   str1 + str2
# end

# p my_concat('hello', '!') == 'hello!'

# def my_empty?(str)
#   if str == ''
#     return true
#   else
#     false
#   end
# end

# p my_empty?('') == true

# def my_end_with?(str, letter)
#   if str[-1] == letter
#     return true
#   else
#     false
#   end
# end

# p my_end_with?('hello', 'o') == true

def all_subs(str)
  arr1=(0...str.size).each_with_object([]) do |idx1, arr|
    (idx1...str.size).each do |idx2|
      arr << str[idx1..idx2]
    end
  end
  arr1
end


def attempt(str)
  sub_arr = all_subs(str)
  ans = sub_arr.select do |substring|
    substring.chars.all? {|char| char == substring[0]}
  end
  
  p ans.select { |word| word.size == word }
end

p attempt('aaaabb') == 'aaaa'