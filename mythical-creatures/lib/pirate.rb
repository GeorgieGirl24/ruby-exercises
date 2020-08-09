class Pirate
  attr_accessor :name, :job, :cursed, :heinous_act, :booty
  def initialize(name, job="Scallywag", cursed=false, booty=0)
    @name = name
    @job = job
    @cursed = false
    @heinous_act = 0
    @booty = booty
  end

  def cursed?
    @cursed = @heinous_act >= 3
  end

  def commit_heinous_act
    @heinous_act += 1
  end

  def rob
    @booty += 100
  end 
end
