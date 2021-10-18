x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# this returns 2,3,4,5,6 (wrong)
# each will always return the original array it was called on.
