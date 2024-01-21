def interleave(arr_1, arr_2)
  new_arr = []
  while arr_2.size > 0
    new_arr << arr_1.shift
    new_arr << arr_2.shift
  end
  p new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# arr_1.zip(arr_2).flatten