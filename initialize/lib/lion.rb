class Lion
  attr_accessor :info
  def initialize(info)
    @info = info
  end
  def name
    info[:name]
  end
  def sound
    info[:sound]
  end
end
