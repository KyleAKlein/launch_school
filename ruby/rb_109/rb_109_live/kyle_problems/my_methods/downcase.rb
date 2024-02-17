def downcase_char(str)
  alpha = ('a'..'z').to_a + ('A'..'Z').to_a
  alpha2 = ('a'..'z').to_a + ('a'..'z').to_a
  idx = 0 

  hsh = alpha.each_with_object({}) do |let, hsh|
    hsh[let] = alpha2[idx]
    idx += 1
  end 
  
  ans_str = ''
  
  str.chars.each do |letter|
    ans_str << hsh[letter]
  end

  ans_str
end
  
 downcase_char('Hello')
 downcase_char('SuPer DuppEr')