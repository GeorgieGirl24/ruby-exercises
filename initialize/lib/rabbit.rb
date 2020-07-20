class Rabbit
  attr_accessor :info
  def initialize(info)
    @info = info
  end
  def name
    if self.info[:num_syllables] == 2
      "#{self.info[:name]} Rabbit"
    else
      self.info[:name]
    end
  end
end
