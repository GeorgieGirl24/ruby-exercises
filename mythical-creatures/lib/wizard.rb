class Wizard
  attr_accessor :name, :bearded, :cast_cost
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_cost = 0
  end
  def bearded?
    @bearded
  end
  def incantation(verse)
    "sudo #{verse}"
  end
  def rested?
    if @cast_cost >= 3
      @rested = false
    else
      @rested = true
    end
  end
  def cast
    @cast_cost +=1
    "MAGIC MISSILE!"

  end
end
