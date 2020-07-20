class Jackalope
  attr_accessor :name, :etymology
  def initialize(name, etymology = ["Jackrabbit", "Antelope"])
    @name = name
    @etymology= etymology
  end
  def etymology
    @etymology
  end
end
