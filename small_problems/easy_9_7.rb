def swap_name(string)
  arr = string.split(' ')
  arr[0], arr[-1] = arr[-1], arr[0]
  arr.join(', ')
end

swap_name('Joe Roberts') == 'Roberts, Joe'