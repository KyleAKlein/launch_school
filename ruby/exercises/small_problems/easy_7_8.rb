def multiply_list(arr1, arr2)
  new_arr = [] 
  new_arr[0] = arr1[0] * arr2[0]
  new_arr[1] = arr1[1] * arr2[1]
  new_arr[2] = arr1[2] * arr2[2]
  new_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]