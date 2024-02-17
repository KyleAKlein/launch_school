def buy_fruit(array)
  new_arr = []
  array.each do |arr|
    num = arr[1]
    num.times { new_arr << arr[0] }
  end
  p new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]