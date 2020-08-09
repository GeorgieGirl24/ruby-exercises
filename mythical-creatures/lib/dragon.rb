
class Dragon
  attr_accessor :name, :color, :rider, :hungry, :eat
  def initialize(name, color, rider, hungry=true)
    @name = name
    @color = color
    @rider = rider
    @eat = 0
    @hungry = hungry
  end

  def hungry?
    @hungry = @eat < 3
  end

  def eat
    @eat += 1
  end
end
