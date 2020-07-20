class Narwhal
  attr_accessor :info
  def initialize(info)
    @info = info
  end
  def name
    self.info[:name]
  end
  def weight
    self.info[:weight]
  end
  def cute?
    self.info[:cute]
  end
end
