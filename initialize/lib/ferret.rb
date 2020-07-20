class Ferret
  attr_reader :name
  def initialize(name = "no name")
    @name = name
  end

  def name
     if @name == "no name"
       "a ferret has #{@name}"
     else
       "a ferret's name is #{@name}"
     end
  end

  def give_name(new_name)
    @name = new_name
  end
end
