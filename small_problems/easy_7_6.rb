def staggered_case(string)
  new_string = string.chars.each_with_index do |char, i|
    if char == ""
      next
    elsif i.odd?
      char.downcase!
    elsif i.even?
      char.upcase!
    else

    char
    end

  end
  p new_string.join
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'