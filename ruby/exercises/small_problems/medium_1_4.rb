def initialize_lights(x)
  lights = Hash.new
  1.upto(x) {|num| lights[num] = "off" }
  lights
end

def flip_switch(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off")? "on" : "off"
    end
  end
end

def lights_on(lights)
  lights.select { |_, state| state == "on" }.keys
end

def toggle_lights(n)
  lights = initialize_lights(n)
  1.upto(lights.size) do |iteration_number|
    flip_switch(lights, iteration_number)
  end

  lights_on(lights)
end

p toggle_lights(1000)

# Row of lights
# toggle light
# lights on array


# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# return value [1, 4]


=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights=>

round 1=> every light is turned on
round 2=> lights 2 and 4 are now off; 1, 3, 5 are on
round 3=> lights 2, 3, and 4 are now off; 1 and 5 are on
round 4=> lights 2 and 3 are now off; 1, 4, and 5 are on
round 5=> lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on=> lights 1, 4, and 9. The return value is [1, 4, 9].


Problem=>
  Given a number that represents how many switches there are, return an array containing each light that will be left on.

Input=>
  integer
Output=>
  an array of integers

Rules=>
  Explicit=>
    -each switch is numbered from 1 - given integer.
      -each switch is to a light that is initially off.
    -every pass is a toggle of the switches
      -every pass you toggle switches that are divisible by the current pass.
        ex. pass 1, all lights are on
            pass 2, lights 2,4,6,8,... are off
            pass 3, lights 3-off,6-on,9-off.
      -continue for n, (integer number) passes.
    
Data Structures=>
  -ans_arr = []

  -switch_hsh = {1=>off, 2=> on}
    -key will be a number, value is off or on.
  
  !-helper methods
    !-toggle_lights - (takes 2 parameters=> hsh, # of passes)
      -iterate through the switch_hsh and if the key is divisible by the current iteration then toggle 
        -toggle is if the value is off make it on, if the value is on make it off.
    
  -switch_hsh return=> select all keys in which the values are in the on position.
    -push key into ans_arr

Algorithm=>
  -Take the given number and create a light_hsh with keys of lights and values if on/off.
  -from 1 to the given number,
    send the light_hsh into the toggle_lights helper method
      -return the changed hsh
    -iterate through until all the lights have been toggled.
  -select from the final lights_hsh all the keys in which the values are in the on position.
=end

def toggle_lights(hsh, passes)
  1.upto(passes) do |num|
    hsh.each do |light, pos|
      if light % num == 0 && hsh[light] == 'on'
        hsh[light] ='off'
      elsif light % num == 0 && hsh[light] == 'off'
        hsh[light] = 'on'
      end
    end
  end
  hsh  # {1=> 'on', 2=> 'off', 3=> 'off'}
end

def lights_on(n)

  light_hsh = 1.upto(n).each_with_object({}) do |num, obj|
    obj[num]= 'off'
  end
  ans_hsh = toggle_lights(light_hsh, n)
 
  ans_hsh.select {|k,v| v == 'on'}.keys
end


p lights_on(5) == [1,4]
p lights_on(10) ==[1,4,9]