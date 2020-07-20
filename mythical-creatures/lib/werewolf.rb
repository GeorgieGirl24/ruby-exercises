class Werewolf
  attr_accessor :name, :location, :human, :wolf, :hungry
  def initialize(name, location = "London", human = true, hungry = false)
    @name = name
    @location = location
    @human = human
    @wolf = wolf
    @hungry = hungry
    @stomach = []
  end
  def human?
    human
  end
  def wolf?
    wolf
  end
  def change!
    if self.human == true
      self.human = false
      self.wolf = true
      self.hungry = true
    elsif self.wolf == true
      self.wolf = false
      self.human = true
      self.hungry = true
    end
  end
  def hungry?
    hungry
  end
  def consume(victim)
    if human == false
      @stomach << victim
      p victim.status = :dead 
      @hungry = false
    end
  end
  def count
    @stomach.count
  end
end
