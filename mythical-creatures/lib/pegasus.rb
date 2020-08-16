class Pegasus
  attr_accessor :name, :fly, :grounded, :mortal_realm, :pools, :count, :immortal_realm
  def initialize(name, fly=true, mortal_realm=true, immortal_realm=false)
    @name = name
    @fly = fly
    @grounded = grounded
    @mortal_realm = mortal_realm
    @immortal_realm = immortal_realm
    @pools = []
    @count = 0
  end

  def flying?
    @fly = !(@grounded == true)
  end

  def grounded?
    @grounded = !(@fly == true)
  end

  def land
    @grounded = true
  end

  def take_a_nap
    @grounded = true
  end

  def take_off
    if @count > 3
      @grounded = true
      "You MUST rest!"
    else
      @grounded = false
    end
  end

  def journey_to_another_realm
    if grounded == true
      "You can't travel with your feet on the ground!"
    elsif grounded == false
      # require 'pry'; binding.pry
      if @mortal_realm == true
        @mortal_realm = false
        @immortal_realm = true
      elsif @immortal_realm == true
        @immortal_realm = false
        @mortal_realm = true
      end
      "Time and space are no match for the amazing!"
    end
  end

  def << (pool)
    @pools << pool
    @count = @pools.count
  end
end


class Pool
  attr_accessor :name, :size, :location
  def initialize(name, size, location)
    @name = name
    @size = size
    @location = location
  end
end
