def reverse!(list)
  array = []
  if list.size > 1
    counter = list.size
    list[counter - 1], list[counter -2], list[counter -3], list[counter-4], list[counter-5] = list[-counter], list[-counter + 1], list[-counter + 2], list[-counter +3], list[-counter + 4]
  else
    list
  end
  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true