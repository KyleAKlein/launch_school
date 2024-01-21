def split_groups(string)
  array = []
  sub_string = ''
  current_char = string[0]

  string.chars.each do |letter|
    if letter == current_char
      sub_string << letter
    else
      array << sub_string
      sub_string = ''
      current_char = letter
      sub_string << letter
    end
  end

  if !sub_string.empty?
    array << sub_string
  end

  p array
end

p split_groups("555") == ["555"]
p split_groups("5556667788") == ["555", "666", "77", "88"]
p split_groups("aaabbbaabbab") == ["aaa", "bbb", "aa", "bb", "a", "b"]
p split_groups("abbbcc88999&&!!!*") == ["a", "bbb", "cc", "88", "999", "&&", "!!!", "*"]
