class Drops
  attr_accessor :count
  def initialize(count = 0)
    @count = count
  end
  def drip
    self.count += 1
  end
end
