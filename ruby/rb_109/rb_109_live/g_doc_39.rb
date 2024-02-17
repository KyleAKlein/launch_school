
=begin
Complete the greatest_product method so that it'll find the greatest product of five consecutive digits in the given string of digits.

Problem: Given a string of digits find the greatest product of five consecutive digits.

Input: string
Output: integer

Rules:
Product strings always have more than 5 digits
If 0 is the highest amount, return 0.

Examples:

p greatest_product("123834539327238239583") == 3240

p greatest_product("395831238345393272382") == 3240

p greatest_product("92494737828244222221111111532909999") == 5292

p greatest_product("92494737828244222221111111532909999") == 5292

p greatest_product("02494037820244202221011110532909999") == 0
#if zero is the highest answer, return 0

Data Structures:
Arrays
numbers = [digits]
answer = 1
product = []

Algorithm:
Step 1: Turn string in array of integers
  => string.chars.map(&:to_i)
Step 1.a: assign array to numbers
  => numbers = [digits]
Step 2: iterate through digits. 
  => .each_with_index 
Step 3:
  => 
  .inject(:*)


Step 3: if product.inject(:*) is greater than answer, replace answer with new_answer.


For example:
greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.
=end

def greatest_product(string)
  answer = 0
  product = []
  numbers = string.chars.map(&:to_i)
  numbers.each_with_index do |num, i|
    counter = 1
    product << num
    loop do
      break if counter == 5
      product << numbers[i+counter]
      counter += 1
    end

    

    if product.include?(nil)
      product.delete(nil)
    elsif 
      product.inject(:*).to_i >= answer
      answer = 0 
      answer += product.inject(:*).to_i
    end
    
    product = []
  end

  answer


end

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0