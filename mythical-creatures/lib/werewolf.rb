class Werewolf
  attr_accessor :name, :location, :human, :wolf, :hungry, :count, :victims
  def initialize(name, location="London", human=true, wolf=false, hungry=false)
    @name = name
    @location = location
    @human = human
    @wolf = wolf
    @hungry = hungry
    @victims = []
    @count = 0
  end

  def human?
    human
  end

  def change!
    @hungry = true
    @human = @human == false
    @wolf = @wolf == false
  end

  def wolf?
    @wolf
  end

  def hungry?
    if @count > 0
      @hungry = false
    end
    @hungry
  end

  def consume(victim)
    if @wolf == true
      @count += 1
      victim.status = :dead
      @victims << victim
    end
  end
end
