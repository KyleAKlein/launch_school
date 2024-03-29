=begin
Your task is to Reverse and Combine Words.
Input: String containing different "words" separated by spaces
1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
  (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result…

Problem: reverse and combine strings.

Input:
  String

=end

def reverse_and_combine_text(string)
  array = string.split(' ')
  (array.size/2).times do 

  if array.size == 2
    array.map! {|word| word.reverse}.join
  elsif array.size > 2
    array[0], array[1], array[2], array[3] = array[1], array[0], array[3], array[2]
  end
end
  p array.join
end

# p reverse_and_combine_text("abc def") == "cbafed"
# p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
# p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
 p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
 p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"