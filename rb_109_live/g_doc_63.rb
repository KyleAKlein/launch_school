=begin

You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

Problem:
  In an array of integers, there is a single outlier which is either odd or even while the rest are the opposite. Find the outlier and return it.


Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)
[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)
=end


# def method(array)
#   odd = array.select { |num| num.odd? }
#   even = array.select {|n| n.even? }
#   if odd.size < even.size
#     return odd.pop
#   elsif odd.size > even.size
#     return even.pop
#   end

# end

# p method([2, 4, 0, 100, 4, 11, 2602, 36]) == 11
# p method([160, 3, 1719, 19, 11, 13, -21]) == 160

# hash = { a:1, b:2, c:3 }
# p hash


# [ 1, 0, 0 ]
# [ 0, 0, 0 ]
# [ 0, 0, 0 ]

x = 0
y = 100
h = {x:, y:}
p h