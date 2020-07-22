class Kid
  attr_accessor :sugar_level, :hyperactive
  def initialize(sugar_level = 0, hyperactive = false)
    @sugar_level = sugar_level
    @hyperactive = hyperactive
  end
  def grams_of_sugar_eaten
    sugar_level
  end
  def eat_candy
    self.sugar_level += 5
  end
  def hyperactive?
    if sugar_level < 60
      hyperactive
      "Not hyperactive yet..."
    end
    if sugar_level >= 60
      self.hyperactive = true
      "OK, now the kid is hyperactive."
    end
  end
end
