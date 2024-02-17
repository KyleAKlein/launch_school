=begin
6 kyu
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
!messy
=end
def solution(string)
  if string == ''
    return []
  end

  array = []
  counter = 0
  
  ((string.size+1)/2).times do
    array << string.slice(counter, 2)
    counter += 2
  end

  if array.last.size == 1
    array[-1]= array[-1]+"_"
  end

  array
end

p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []
