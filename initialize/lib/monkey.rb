class Monkey
  attr_accessor :info
  def initialize(info)
    @info = info
  end
  def name
    self.info[0]
  end
  def type
    self.info[1]
  end
  def favorite_food
    self.info[2]
  end
end
