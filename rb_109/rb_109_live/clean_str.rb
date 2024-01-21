
def separate(str)
  lower_case = ''
  upper_case = ''
  numbers = ''
  special_char = '' #clean_stra-zA-Z0-9
  special_char = str.delete('a-zA-Z0-9')
  new_str = str.delete(special_char)

  new_str.each_char do |char| # 3.downcase = 3
    if char.to_i.to_s == char 
      numbers << char 
    elsif char == char.upcase 
      upper_case << char 
    elsif char == char.downcase 
        lower_case << char 
    end 
  end 

  [lower_case, upper_case, numbers, special_char]
end 

str = 'asdjbsdcASChasiCAD*CAJNDCncmqa32z$r247yrt2#r23498ry49'
p separate(str)

