class Centaur
  attr_accessor :name, :breed, :cranky, :standing, :laying, :rested, :potion, :sick
  def initialize(name, breed = "Palomino", cranky = false, standing = true, laying = false, rested = false, potion = 0, sick = false)
    @name = name
    @breed = breed
    @cranky = cranky
    @standing = standing
    @laying = laying
    @activity = 0
    @rested = rested
    @potion = potion
    @sick = sick
  end
  def shoot
    @activity += 1
    if @activity >= 3 || standing == false
      "NO!"
    else
      "Twang!!!"
    end
  end
  def run
    @activity += 1
    if @activity >= 3 || laying == true
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end
  def cranky?
    if @activity >= 3
      self.cranky = true
    end
    cranky
  end
  def standing?
    standing
  end
  def sleep
    @activity = 0
    self.cranky = false
    if standing == true
      "NO!"
    end
  end
  def laying?
    laying
  end
  def lay_down
    self.laying = true
    self.standing = false
  end
  def stand_up
    self.laying = false
    self.standing = true
  end
  def drink
    if standing == true
      self.potion += 1
    elsif laying == true
      "NO!"
    end
  end
  def rested?
    rested
    if potion == 1
      self.rested = true
    end
  end
  def sick?
    if potion >= 2
      self.sick = true
    end
    sick
  end
end
