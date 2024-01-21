=begin

Problem:

A triangle is classified as follows:

:equilateral All 3 sides are of equal length
:isosceles 2 sides are of equal length, while the 3rd is different
:scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

input: 3 numbers
output: a symbol

Valid Rules:
sum of two shortest sides > longest side
all sides > 0



Example:

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

Data Structures:
symbols

Algorithm:


=end

def triangle(num1, num2, num3)
  arr = [num1, num2, num3]
  if valid?(arr) == false
    return :invalid
  elsif num1 == num2 && num2 == num3
    return :equilateral
  elsif num1 != num2 && num2 != num3
    return :scalene
  elsif num1 == num2 || num2 == num3
    return :isosceles
  end
end

def valid?(arr)
  numbers = arr.sort

  if numbers[0] + numbers[1] <= numbers[2]
    return false
  elsif numbers.any?{|x| x < 0}
    return false
  else
    return true
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid