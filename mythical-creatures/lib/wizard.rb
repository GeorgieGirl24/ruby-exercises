class Wizard
  attr_accessor :name, :bearded, :rested, :cast
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast = 0
  end

  def bearded?
    bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    @rested = @cast < 3
  end

  def cast
    @cast += 1
    "MAGIC MISSILE"

  end

end
