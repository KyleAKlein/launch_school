def max_rotation(i)
  num = into_array(i)
  counter = 0

  loop do
    break if counter == num.size
    num << num.delete_at(counter)
    counter += 1
  end
  num.join.to_i
end

def into_array(i)
  array = []
  result = i.to_s.split('')
  result.each { |num| array << num.to_i }
  array
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845