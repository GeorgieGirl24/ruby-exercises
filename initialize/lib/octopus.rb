class Octopus
  attr_accessor :name, :name_of_narwhal
  def initialize(name, name_of_narwhal)
    @name = name
    @name_of_narwhal = name_of_narwhal
  end
  def name
    @name
  end
  def friend
    @name_of_narwhal
  end 
end
