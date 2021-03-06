=begin
Problem:
A triangle is classified as follows:

right: One angle of the triangle is a right angle (90 degrees)
acute: All 3 angles of the triangle are less than 90 degrees
obtuse: One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

Examples:
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

Input: 3 numbers
Output: a symbol

Valid Rules:
sum of numbers must equal 180
all numbers must be > 0

Data Structures:

Algorithm:

Code


=end

def triangle(num1, num2, num3)
  arr = [num1, num2, num3]
  if valid?(arr) == false
    return :invalid
  elsif arr.any? {|x| x == 90 }
    return :right
  elsif arr.all? {|x| x < 90 }
    return :acute
  else  
    return :obtuse
  end
end

def valid?(arr)
  numbers = arr.sort
  if numbers.any?{|x| x <= 0}
    return false
  elsif numbers.sum != 180
    return false
  else
    return true
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
