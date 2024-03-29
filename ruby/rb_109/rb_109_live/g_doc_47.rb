=begin
6 kyu
Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.
It should remove all values from list a, which are present in list b.
array_diff([1,2],[1]) == [2]
If a value is present in b, all of its occurrences must be removed from the other:
array_diff([1,2],[1]) == [2]
=end

def array_diff(arr1, arr2)
  arr2.each do |num|
    arr1.each do |n|
      if n == num
        arr1.delete(n)
      end
    end
  end
  
  arr1


end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
