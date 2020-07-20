class Medusa
    # @@stoned = stoned
  attr_accessor :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end
  def empty?
    @statues.empty?
  end
  def stare(victim)
    statues << victim
    if victim.stoned == false
      victim.stoned = true
    end
  end
  def count
    statues.count
    if statues.count > 3
      statues.shift
      statues.count
    end
  end

end


class Person
  attr_accessor :name, :stoned
  def initialize(name, stoned = false)

    @name = name
    @stoned = stoned
  end
  def stoned?
    @stoned
  end
end
