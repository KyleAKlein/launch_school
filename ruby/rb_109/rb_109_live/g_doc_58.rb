=begin
6 kyu
Write a function
triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple of a number at any place in num1 and also a straight double of the same number in num2.
If this isn't the case, return 0
Examples
triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s
triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2

Problem:
  You are given to numbers, if there are 3 repeating digits in the first number and 2 repeats of the same digit in the second number, then return 1.
  If not, return 0.

Input: Number
Output: Integer (1 or 0)

Rules:
  Explicint:
    -Return 1 or 0
  Implicint:
    -If only one condition is met, return 0

Examples:

triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and  num2 has straight double 99s
triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2

Data Structures:
  current num = ''

Algorithm:
  Step 1:
    break number into individual number and put in an array.
    #=> .digits.reverse
  Step 2:
    iterate through the collection, make current_num = block's parameter
  Step 3:
    if the next number is equal to currentnum[0] then push number otherwise reset current num
  Step 4:
    if current num is size 3 
      iterate through string 2.
        repeat with second_num
          if size equal 2 return 1

=end

def triple_double(number1, number2)
  array1 = number1.digits.reverse
  array2 = number2.digits.reverse
  

  current1 = ''
  current2 = ''

  array1.each do |num1|
   
    if current1.size == 3

      array2.each do |num2|
      
     
        if current2.size > 1 && current2[0] == current1[0]
          
          return 1
        elsif current2.empty?
          
          current2 << num2.to_s
        end

        if current2[0] == num2.to_s
          
          current2 << num2.to_s
          
        else
          current2 = ''
        end
      end

    elsif current1.empty?
      current1 << num1.to_s
    elsif current1[0] == num1.to_s
      current1 << num1.to_s
    else
      current1 = ''
    end

  end
  
  return 0
end


p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1






