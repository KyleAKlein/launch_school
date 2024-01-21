def century(year)
  if year[-1] == 0
    year/100
  else
    puts year/100 + 1
  end
  
end


p century(1705) == 18
p century(1900) == 19
p century(1601) == 17
p century(2000) == 20