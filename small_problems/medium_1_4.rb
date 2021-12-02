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