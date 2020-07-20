class Ogre
  attr_accessor :name, :location, :swings
  def initialize(name, location = "Swamp", swings = 0)
    @name = name
    @location = location
    @counter = []
    @swings = swings
    @encounters = []
  end
  def home
    location
  end
  def encounter(human)
    @encounters << human
    @counter << human
    human.encounter += 1
    if @counter.count >= 3
      human.notices_ogre = true
      swing_at(human)
      @counter.clear
    end
  end
  def swing_at(human)
      self.swings += 1
      if swings % 2 == 0
        human.knocked_out = true
      end
  end
  def encounter_counter
    @encounters.count
  end
  def apologize(human)
    human.knocked_out = false
  end
end

class Human
  attr_accessor :name, :encounter, :notices_ogre, :knocked_out
  def initialize(name = 'Jane', encounter = 0, notices_ogre = false, knocked_out = false)
    @name = name
    @encounter = encounter
    @notices_ogre = notices_ogre
    @knocked_out = knocked_out
  end
  def encounter_counter
    encounter
  end
  def notices_ogre?
    notices_ogre
  end
  def knocked_out?
    knocked_out
  end
end
