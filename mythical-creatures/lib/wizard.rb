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

  def dontUsecamelCaseshere
    "Hello y'all, sup sup sup, so I know what you're thinking, old
    Josh here is coming in to save the day. Well not today, you
    need to believe in yourself, you can totally do it!
    *cue epic montage*
    -Bam! you now have a new power - ~power of vim~ -
    Hey, if we got time later, let's draw some stuff in the
    browser.
    The browser? you say... say what time period is this, whoops...
    I'm outa here , outa here, outa here(*say that to yourself in a
    echo'ey kind of way*)"
  end
end
