class Direwolf
  attr_accessor :name, :home, :size, :hunts_white_walkers
  def initialize(name, home = "Beyond the Wall", size = "Massive", hunts_white_walkers = true)
    @name = name
    @home = home
    @size = size
    @starks = []
    @hunts_white_walkers = hunts_white_walkers
  end
  def starks_to_protect
    @starks
  end
  def protects(stark)
    if home == stark.location && @starks.count < 2
      @starks << stark
      stark.safe = true
      stark.house_words = "The North Remembers"
      self.hunts_white_walkers = false
    end
  end
  def hunts_white_walkers?
    hunts_white_walkers
  end
  def leaves(stark)
    stark.safe = false
    @starks.clear
    stark
  end
end


class Stark
  attr_accessor :name, :location, :house_words, :safe
  def initialize(name, location = "Winterfell", safe = false, house_words = "Winter is Coming")
    @name = name
    @location = location
    @house_words= house_words
    @safe = safe
  end
  def safe?
    safe
  end
end
