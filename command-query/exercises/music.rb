class Music
  attr_accessor :loud, :dial
  def initialize(loud = false, dial = 0)
    @loud = loud
    @dial = dial
  end
  def loud?
    loud
  end
  def turn_up
    self.dial +=1
    self.loud = true
  end
end
