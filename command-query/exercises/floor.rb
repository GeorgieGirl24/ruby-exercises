class Floor
  attr_accessor :dirty
  def initialize(dirty = true)
    @dirty = dirty
  end
  def dirty?
    "The floor should be dirty."
    dirty
  end
  def wash
    "The floor should be clean."
    self.dirty = false
  end 
end
