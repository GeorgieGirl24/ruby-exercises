class RollCall
  attr_accessor :name, :names
  def initialize
    @name = name
    @names = []
  end
  def longest_name
    names_and_numbers = {}
    @names.each do |name|
      names_and_numbers[name.length] = name
    end
    comparing_numbers = names_and_numbers.keys
    largest_index = comparing_numbers.max
    names_and_numbers[largest_index]
  end
  def << name
    self.name = name
    @names << name
  end
end
