=begin

Problem:
Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Example:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

Data Structures:


=end

def friday_13th(year)
  counter = 0

  jan = Time.new(year, 1, 13)
  feb = Time.new(year, 2, 13)
  mar = Time.new(year, 3, 13)
  apr = Time.new(year, 4, 13)
  may = Time.new(year, 5, 13)
  jun = Time.new(year, 6, 13)
  july = Time.new(year, 7, 13)
  aug = Time.new(year, 8, 13)
  sept = Time.new(year, 9, 13)
  oct = Time.new(year, 10, 13)
  nov = Time.new(year, 11, 13)
  dec = Time.new(year, 12, 13)

  array = [jan, feb, mar, apr, may, jun, july, aug, sept, oct, nov, dec]
  array.each do |x|
    if x.friday?
      counter += 1
    end
  end
  
  counter
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2