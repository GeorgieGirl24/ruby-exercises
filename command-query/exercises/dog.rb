class Dog
  attr_accessor :hungry, :count
  def initialize(hungry = true, count = 0)
    @hungry = hungry
    @count = count
  end
  def eat
    self.hungry = false
  end
  def hungry?
    hungry
  end 
end
