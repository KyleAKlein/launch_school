def halvsies(arr)
  arr_1 = []
  arr_2 = []
  until arr.size == 0
    arr_1 << arr.shift
    if arr.size > 0
    arr_2 << arr.pop
    end
  end
  arr_2.reverse!

  new_arr = []
  new_arr << arr_1
  new_arr << arr_2
  new_arr
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]