def rotate_rightmost_digits(num1, num2)
  new_a = num1.to_s.split('')
  n = new_a.delete(new_a[-num2])
  new_a.push(n)
  p new_a.join.to_i
end



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917