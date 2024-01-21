class Machine
  # attr_writer :switch
  attr_reader :switch

  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def state
    switch
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end

end

button = Machine.new
button.start
button.stop
p button.state