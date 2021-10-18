arr_1 = [1,3,5,7,9]
p arr_1
arr_1.collect! { |num| num += 2 }
p arr_1
