class Clock
  attr_accessor :time
  def initialize(time = 6)
    @time = time
  end
  def time
    if @time > 13
      @time -= 12
    else
      @time
    end
  end
  def wait
    self.time += 1
  end
end
