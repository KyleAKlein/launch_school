=begin
6 kyu
Your goal is to write the group_and_count method, which should receive an array as a unique parameter and return a hash. Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

Problem:
  take an array and return a hash where the keys are the elements and the values are the counts.

Input:
  Array
Output:
  Hash

Rules:
  Explicint:
    -Empty or nil input must return nil
    - count method cannot be used
    - length method cannot be used

Examples:
  input = [1,1,2,2,2,3]
group_and_count(input)# == {1=>2, 2=>3, 3=>1}

Example usage:
input = [1,1,2,2,2,3]
group_and_count(input)# == {1=>2, 2=>3, 3=>1}
The following methods were disabled:
Array#count
Array#length

Algoritm:
  Step 0: if empty or nil, return nil
  Step 1:
    Iterate through array. Increase the count on the value of the hash key of each element.

=end

def group_and_count(array)
  if array.nil? || array.empty?
    return nil
  end

  hash = array.each_with_object({}) do |num, hash|
    if hash[num] == nil
      hash[num] = 1
    else
      hash[num] += 1
    end
  end

  hash
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}
