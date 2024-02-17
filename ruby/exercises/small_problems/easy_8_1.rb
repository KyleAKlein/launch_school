# def sum_of_sums(arr)
#   sum = arr.sum
#   arr.pop
#   sum_1 = arr.sum

#   digit = arr[0] + sum_1 + sum
#   digit
# end

def sum_of_sums(arr)
  sum = 0 
  sum_1 = 0
  sum_2 = 0
  sum_3 = 0
  sum_4 = 0
  sum_5 = 0

  arr.map do |num|
    sum += num
  end

  arr.pop
  arr.map do |num|
    sum_1 += num
  end

  arr.pop
  arr.map do |num|
    sum_2 += num
  end

  arr.pop
  arr.map do |num|
    sum_3 += num
  end

  arr.pop
  arr.map do |num|
    sum_4 += num
  end

  arr.pop
  arr.map do |num|
    sum_5 += num
  end

  p sum + sum_1 + sum_2 + sum_3 + sum_4 + sum_5

end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
#sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

