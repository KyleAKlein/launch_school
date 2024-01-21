def staggered_case(string)
  new_string = string.chars.each_with_index do |char, i|
    if i.odd?
      char.downcase!
    elsif i.even?
      char.upcase!
    else
      char
    end

  end
  p new_string.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'