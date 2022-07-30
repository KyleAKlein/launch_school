=begin
Given a string of integers, return the number of odd-numbered substrings that can be formed.
For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.[b]
solve("1341") = 7. See test cases for more examples.


Problem:
  Given a string of integers, return the number of odd susbtrings that can be formed.

Input:
  String
Output:
  integer

Rules:
  Explicit:

  Implicit:

Data Structures:
sub_array = []

Algorithm:
  Step1:
    create an array of substrings.
  Step2:
    iterate through array of substrings and select the strings that are odd
  Step3:
    return the number of selected elements 


def solve(string)
  array = []
  num1 = 0
  num2 = 1
  # 01 02 03 04, 11 12 13, 21 22, 31

  loop do

    if num2 < 4
      string.slice(num1, num2)
      num2 += 1
    elsif 
    
    if num2 == string.size+1
      num1 += 1
    else
      next
    end
   
    
      break if num2 == 4
          
    

end


# loop do
#   break if num1 == string.size

#   loop do
#     break if num1 == string.size+1

#     if string.slice(num1,num2).to_i.odd?
#       array << string.slice(num1,num2).to_i
#     elsif
#     end
#     num2 += 1
#   end
#     num1 = 0
#     num2 = 0

#     num1 += 1
#     num2 += 1
# end

  # p array
  # p array.size
end

# p solve("1341") == 7
solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28

=end

def solve(string)
  sub_array = []
  sub_a = find_substrings(string)

  # 0.upto(string.size) do |num|
  #   string.chars.each_with_index do |char, idx|
  #     sub_array << string.slice(num, idx+1)
  #   end
  # end

  p sub_array
  p sub_a

  letters = sub_array
  numbers = letters.map(&:to_i)
  
  numbers.select{|x|x.odd?}.size
end

def find_substrings(string)
  (0...string.size).each_with_object([]) do |idx1, substrings|
    (idx1...string.size).each do |idx2|
      substrings << string[idx1..idx2]
    end
  end # returns substrings array
end


p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28



# def find_substrings(string)
#   (0...string.size).each_with_object([]) do |idx1, substrings|
#     (idx1...sring.size).each do |idx2|
#       substrings << string[idx1..idx2]
#     end
#   end
# end


def find_substrings(string)
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1...string.size).each do |idx2|
      arr << string[idx1..idx2] #secret answer is string[idx1..idx2]
    end
  end
end

find_substrings("hello")


def find_substrings(string)
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1...string.size).each do |idx2|
      arr << string[idx1..idx2]
    end
  end
end


def find_substrings(string)
  (0...string.size).each_with_object([]) do |idx1, arr|
    (idx1...string.size).each do |idx2|
      arr << string[idx1..idx2]
    end
  end
end
