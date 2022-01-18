# lower_arr = []
# upper_arr = []
# neither_arr = []

# def helper(string)
#   l_percent = lower_arr.size / string.size
#   u_percent = upper_arr.size / string.size
#   n_percent = neither_arr.size / string.size
# end


def letter_percentages(string)
  spl = string.split('')
  p spl
  spl.each do |x|
    case x
    when 'a'...'z'
      puts "hello"
    when 'A'...'Z'
      puts "goodbye"
    when ' '
      puts "nothing"
    when '0'...'9'
      puts "number"
    else
      puts "truthy"
    end

  #helper(string)
  end
  # hash = { lowercase: l_percent, uppercase: u_percent, neither: n_percent }

end


p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }

#letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
#letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


=begin

Problem:
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.


Examples:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


Questions:
Are spaces counted as neither? yes.


Data Structures:
string, hash, arrays.

Input: string
Output: hash; consisting of lowercase, uppercase, and neither

Algorithm:
1. take string, separate by character.
2. sort character into separate arrays, (lowercase, uppercase, and neither)
3. divide array size by total characters getting a percentage.

Code:


=end