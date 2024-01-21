# =begin
# Problem:
# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Input: string
# Output: Boolean

# Example: 
# balanced?('What (is) this?') == true
# balanced?('What is) this?') == false
# balanced?('What (is this?') == false
# balanced?('((What) (is this))?') == true
# balanced?('((What)) (is this))?') == false
# balanced?('Hey!') == true
# balanced?(')Hey!(') == false
# balanced?('What ((is))) up(') == false

# Data Structure:
# strings, arrays

# Algorithm:
# -take string
# -iterate through string
# -if ) appears before ( return false
# -count # of (
# - count # of )
# if count is uneven, return false
# - if even then does ( appear 50% total before ) appears

# =end

# def balanced?(string)
#   characters = string.chars
#   current_side = ''
#   left_count = 0
#   right_count = 0

#   characters.each do |chars|
#     if chars == '('
#       left_count += 1
#     elsif chars == '(' && current_side == ''
#       current_side = '('
#     elsif chars == ')' && current_side == ''
#       return false
#     elsif chars == ')' && current_side == '('
#       right_count += 1
#     # elsif chars == ')' && hash[:toggle] == 'wrong'
#     #   hash[:toggle] = 'right'

#     end
#   end
#   p left_count
#   p right_count
#   if left_count == right_count
#     return true
#   else
#     return false
#   end
# end

# p balanced?('What (is) this?') == true
# # p balanced?('What is) this?') == false
# # p balanced?('What (is this?') == false
# # balanced?('((What) (is this))?') == true
# # balanced?('((What)) (is this))?') == false
# # balanced?('Hey!') == true
# # balanced?(')Hey!(') == false
# # balanced?('What ((is))) up(') == false


def balanced?(string)
  characters = string.chars
  arr = []
  characters.each do |x| 
    if x == '('
      arr << '('
    elsif x == ')'
      arr << ')'
    end

  end

  if arr == []
    return true
  elsif arr.count % 2 != 0
    return false
  elsif arr[0] == ')'
    return false
  elsif arr[0] == arr[-1]
    return false
  else
    return true
  end

end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false