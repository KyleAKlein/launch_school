=begin
6 kyu
Given: an array containing hashes of names
Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
Example:
list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'
list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'
list([ {name: 'Bart'} ])
# returns 'Bart'
list([])
# returns ''
Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.
=end

def list(array)
  answer = ''
  if array.size == 3
    array.each do |hash|
      hash.each do |k, v|
        answer << hash[k] + ' '
      end
    end
  end

  p answer.rstrip!
     
end

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'
list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'
list([ {name: 'Bart'} ])
# returns 'Bart'
list([])
# returns ''