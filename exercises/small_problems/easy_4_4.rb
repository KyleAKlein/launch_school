def leap_year?(num)
  if num < 1752
    num % 4 == 0
  else
    if num % 4 != 0
      false
    elsif num % 4 == 0 && num % 100 != 0
      true
    elsif num % 100 == 0 && num % 400 == 0
      true
    elsif
      num % 100 == 0
      false
    else
      true
    end
  end
end




p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true