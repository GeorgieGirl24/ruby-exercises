class Light
  attr_accessor :on
  def initialize(on = false)
    @on = on
  end
  def on?
    on
  end
  def turn_on
    self.on = true
  end 
end
