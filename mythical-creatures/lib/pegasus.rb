class Pegasus
  attr_accessor :name, :flying, :resting, :mortal_realm
  def initialize(name, flying=true, mortal_realm=true)
    @name = name
    @flying = flying
    @resting = resting
    @mortal_realm = mortal_realm
  end

  def flying?
    @flying = !(@resting == true)
  end

  def resting?
    @resting = !(@flying == true)
  end

  def land
    @flying = false
  end

  def take_a_nap
    @resting = true
  end

end
