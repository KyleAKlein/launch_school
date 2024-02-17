def center_of(string)
  center = string.size.to_f / 2
  real_center = center - 1
  if string.size.odd?
    p string.split('')[center]
  else
    p string.split('')[real_center, 2].join
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'