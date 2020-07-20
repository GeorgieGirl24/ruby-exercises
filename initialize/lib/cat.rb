class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

  def sound
    return "meow"
  end

end
