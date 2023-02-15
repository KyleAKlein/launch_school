=begin
Modify the kebabize function so that it converts a camel case string into a kebab case.
kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:
the returned string should only contain lowercase letters

=end

def kebabize(string)
  ans_str = ''
  string.chars.each do |x|
    if (1..9).include?(x.to_i)
      next
    elsif ('A'..'Z').include?(x)
      ans_str << '-' + x
    elsif
      ans_str << x
    end
  end
  ans_str.downcase
end

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

# # 11/20/22 
# def kebabize(string)
#   ans_str = ''
#   string = string.delete('^a-zA-Z')
#   string.chars.each do |char|
#     if char == char.upcase
#       ans_str << '-'+ char.downcase
#     else
#       ans_str << char
#     end
#   end

#   ans_str
# end

# p kebabize('myCamelCasedString') == 'my-camel-cased-string' 
# p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
