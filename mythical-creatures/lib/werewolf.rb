class Werewolf
  attr_accessor :name, :location, :human, :wolf, :hungry, :count, :victims, :inventory, :werewolf, :protection, :must_be_human
  def initialize(name, location="London", human=true, wolf=false, hungry=false, protection=false, must_be_human=false)
    @name = name
    @location = location
    @human = human
    @wolf = wolf
    @hungry = hungry
    @victims = []
    @count = 0
    @inventory = {:items => "climbing shoes"}
    @werewolf = werewolf
    @protection = protection
    @must_be_human = must_be_human
  end

  def human?
    human
  end

  def change!
    @count += 1
    @hungry = true
    if @must_be_human == true
      @wolf = false
    else
      @human = @human == false
      @wolf = @wolf == false
      @werewolf = @wolf
    end
  end

  def wolf?
    @wolf
  end

  def hungry?
    @hungry = !(@count.zero?)
  end

  def consume(victim)
    if @wolf == true
      @count = 0
      victim.status = :dead
      @victims << victim
    end
  end

  def bite(victim)
  end

  def werewolf?
    werewolf
  end

  def inventory
    protected?
    @inventory
  end

  def protected?
    if protection == true
      "What is that!? Is that wolfsbane!? Are you trying to kill me?"
    elsif protection == false
      "I thought the daft malevolent transformations would never end! Thank you kind traveller!"
    end
  end

  def use_items
    #stuck in human form
    @inventory.clear
    @must_be_human = true
  end

end
