class Kangaroo
  attr_reader :name, :kids
  def initialize(name, kids)
    @name = name
    @kids = kids
  end
  def children
    @kids
  end 
end
