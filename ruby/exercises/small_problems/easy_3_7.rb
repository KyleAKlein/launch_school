# def oddities(array)
# 	odd_elements = []
# 	index = 0
# 	while index < array.size
# 		odd_elements << array[index]
# 		index += 2
# 	end
# 	odd_elements
# end

# def oddities_even(array)
# 	even_elements = []
# 	index = 1
# 	while index < array.size
# 		even_elements << array[index]
# 	  index += 2
# 	end
# 	even_elements
# end


def oddities(arr)
	new_arr = []
	arr.each_with_index do |item, index|
		if index == 0
			new_arr << item
			index += 2
		end

	end
	new_arr
end




p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
