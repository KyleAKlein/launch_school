def letter_percentages(string)
  characters = string.split('')
  hash = { 
  :lowercase => 0, :uppercase => 0, :neither => 0
}

  characters.each do |x|
    case x
    when 'a'...'z'
      hash[:lowercase] += 1
    when 'A'...'Z'
      hash[:uppercase] += 1
    when ' '
      hash[:neither] += 1
    when '0'...'9'
      hash[:neither] += 1
    else
      hash[:neither] += 1
     end
    end
  total = hash[:lowercase] + hash[:uppercase] + hash[:neither]

  new_hash = {
    :lowercase => ( hash[:lowercase].to_f / total.to_f ) * 100, :uppercase => ( hash[:uppercase].to_f / total.to_f ) * 100, :neither => ( hash[:neither].to_f / total.to_f ) * 100
  }

  new_hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


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