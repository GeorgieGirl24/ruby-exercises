class Tire
  attr_accessor :flat
  def initialize(flat = false)
    @flat = flat
  end
  def flat?
    flat
  end
  def blow_out
    self.flat = true
    "I ran over a nail!"
  end 
end
