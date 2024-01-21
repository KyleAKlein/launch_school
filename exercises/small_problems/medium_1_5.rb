def diamond(i)
  puts "  " + "*"*(i-4) + " "
  puts " " + "*"*(i-2) + " "
  puts "*"*i
  puts " " + "*"*(i-2) + " "
  puts "  " + "*"*(i-4) + " "
end

diamond(5)

#  *
# ***
#  *