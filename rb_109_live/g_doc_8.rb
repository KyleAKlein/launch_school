=begin
Note: this problem is tricky. solution is .scan  (look into this more)

For a given nonempty string s find a minimum substring t and the maximum number k, such that the entire string s is equal to t repeated k times. The input string consists of lowercase latin letters. Your function should return a tuple (in Python) (t, k) or an array (in Ruby and JavaScript) [t, k]

Example #1:
for string
s = "ababab"
the answer is
["ab", 3]

Example #2:
for string
s = "abcde"
the answer is
because for this string "abcde" the minimum substring t, such that s is t repeated k times, is itself.
=end

def f(string)
  array =[]
  unique = string.split('').uniq.join
  array << unique

  split_array = string.scan(unique)
  array << split_array.size
end


p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]