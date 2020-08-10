class Ogre
  attr_accessor :name, :home, :swings, :encounter_counter
  def initialize(name, home="Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(human)
    human.encounter_counter += 1
    @encounter_counter += 1
  end

  def swing_at(human)
    if human.encounter_counter % 3 == 0
      @swings += 1
    end
  end

  def apologize(human)
    human.got_apology = true
  end
end


class Human
  attr_accessor :name, :encounter_counter, :notices_ogre, :knocked_out, :got_apology
  def initialize(name="Jane")
    @name = name
    @encounter_counter = 0
    @notices_ogre = false
    @knocked_out = false
    @got_apology = false
  end

  def notices_ogre?
    @notices_ogre = @encounter_counter % 3 == 0
  end

  def knocked_out?
    knocked_out = @encounter_counter % 3 == 0 && @encounter_counter.even? && @got_apology == false
  end
end
