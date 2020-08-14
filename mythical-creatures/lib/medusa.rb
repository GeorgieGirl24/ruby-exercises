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
    @statues.each do |statue|
      if statue.inventory[:items] == 'mirror'
        @statues.shift
        statue.stoned = false
      end
    end
    if @statues.count > 3
      @statues.shift.stoned = false
    end
    @statues
  end
end

class Person
  attr_accessor :name, :stoned, :count, :inventory
  def initialize(name, stoned=false)
    @name = name
    @stoned = stoned
    @count = 0
    @inventory = {}
  end

  def stoned?
    @stoned
  end
end
