# Write a method that takes an Array of numbers, and 
# returns an Array with the same number of elements, and each element 
# has the running total from the original Array.

def running_total(array)
  arr1 = array.clone
  counter = 1
  loop do
    break if counter == 3
    
    arr1.map! do |num|
      arr1[0]
      num = num += arr1[counter]
    

    end
    counter += 1
    arr1[0] = num

    p arr1
  end
end

# running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []