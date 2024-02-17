def remove_anagrams(arr)
  arr = arr.map { |word| word.dup }
 
  arr.size.times do |num|
   (arr.size-1).times do |int| 
     if arr[int].chars.sort == arr[int+1].chars.sort 
       arr.delete_at(int+1)
       break 
     else 
       next 
     end 
   end 
 end 
     
 p arr 
 end 
 
 
 remove_anagrams(["bat","tab","all","tea","eat"]) == ["bat","all","tea"] 
 remove_anagrams(['a','b','c','d','e']) == ['a','b','c','d','e']
 remove_anagrams(["dog", "god"]) == ["dog"] 
 remove_anagrams(["abba","baba","bbaa","cd","cd"]) == ["abba","cd"] 
 remove_anagrams(["day","tina", "anit","house","note", "tone"]) == ["day","tina","house","note"]
 