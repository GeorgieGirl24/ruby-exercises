class Bag
  attr_accessor  :candies, :candy
  def initialize
    @candies = []
  end

  def empty?
    candies.empty? #referring to an Array method
  end
  def count
    candies.count #reffering to an Array method
  end
  def << candy
    candies << candy
  end
  def contains?(candy)
    candy_types = candies.map do |candy|
      candy.type
    end
    candy_types.include?(candy)
    # require 'pry'; binding.pry
  end
end





# candy.type
