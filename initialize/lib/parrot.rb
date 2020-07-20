class Parrot
  attr_accessor :info, :sound
  def initialize(info, sound = "Squawk!")
    @info = info
    @sound = sound
  end
  def name
    self.info[:name]
  end
  def sound
    @sound
  end
  def known_words
    self.info[:known_words]
  end
end
