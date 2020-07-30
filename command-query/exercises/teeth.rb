class Teeth
  attr_accessor :clean
  def initialize(clean = false)
    @clean = clean
  end
  def clean?
      clean
  end
  def brush
    self.clean = true
  end
end
