class Direwolf
  attr_accessor :name, :home, :size, :starks, :wolf_protect, :hunts_white_walkers
  def initialize(name, home='Beyond the Wall', size='Massive', hunts_white_walkers=true)
    @name = name
    @home = home
    @size = size
    @starks = []
    @wolf_protect = []
    @hunts_white_walkers = hunts_white_walkers
  end

  def starks_to_protect
    @starks.each do |stark|
      stark.name
    end
  end

  def protects(stark)
    wolf_protect << name if (!wolf_protect.include?(name))
    wolf_protect << stark.name if wolf_protect.length <= 2
    stark.safe = @wolf_protect.include?(stark.name)
    @starks << stark if stark.location == @home && wolf_protect.include?(stark.name)
  end

  def hunts_white_walkers?
    hunts_white_walkers = !(@wolf_protect.include?(name))
  end

  def leaves(stark)
    @wolf_protect.delete_if{|element| @wolf_protect.include?(stark.name)}
    @starks.delete_if{|stark| !(@wolf_protect.include?(stark.name))}
    stark.safe = @wolf_protect.include?(stark.name)
    stark
  end
end


class Stark
  attr_accessor :name, :location, :safe, :house_words
  def initialize(name, location='Winterfell', safe=false, house_words='Winter is Coming')
    @name = name
    @location = location
    @safe = safe
    @house_words = house_words
  end

  def safe?
    safe
  end
end
