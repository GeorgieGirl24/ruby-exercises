
class Dragon
  attr_reader :name, :color, :rider, :count, :hungry
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @count = 0
  end

  def name
    @name
  end

  def hungry?
    hungry
  end

  def eat
    @count += 1
    if count < 3
      @hungry = true
    else
      @hungry = false
    end
  end

end
