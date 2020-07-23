class Yak
  attr_accessor :hairy
  def initialize(hairy = true)
    @hairy = hairy
  end
  def hairy?
    hairy
  end
  def shave
    self.hairy = false
  end 
end
