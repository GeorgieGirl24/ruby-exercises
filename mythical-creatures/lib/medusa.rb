class Medusa
  attr_accessor :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    @statues << victim
  end

  def statues
    if @statues.count > 3
      freedom = @statues.shift
      freedom.stoned = false
    end
    @statues
  end
end

class Person
  attr_accessor :name, :stoned, :count
  def initialize(name, stoned=false)
    @name = name
    @stoned = stoned
    @count = 0
  end

  def stoned?
    @stoned
  end
end
