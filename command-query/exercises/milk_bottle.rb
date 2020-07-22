class MilkBottle
  attr_accessor :full
  def initialize(full = true)
    @full = full
  end
  def full?
    if full == true
      full
      "The bottle should be full."
    elsif full == false
      "The bottle should no longer be full."
      full
    end
  end
  def spill
    self.full = false
    # "The bottle should no longer be full."
  end
end
