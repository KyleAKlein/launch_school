def my_method(str)
  ans_str = ''
  cur_num = 0

  alpha = ('A'..'Z').to_a + ('a'..'z').to_a
  
  str.chars.each_with_index do |char, idx|
    if char == char.to_i.to_s
      cur_num = char.to_i
    elsif alpha.include?(char)
      ans_str << char * cur_num
    end
  end

  ans_str    
end

p my_method('3a3A4b') == 'aaaAAAbbbb'
p my_method('1a2b3c') == 'abbccc'
p my_method('5A364bc') == 'AAAAAbbbbcccc'
