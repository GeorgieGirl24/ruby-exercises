class Bag
  attr_accessor :bag, :candy
  def initialize
    @bag = []
  end
  def empty?
    @bag.empty?
  end
  def count
    bag.count
  end
  def candies
    bag
  end
  def << candy
    bag << candy
  end
  def contains?(candy)
    candy_type = bag.map do |candy|
      candy.type #taking the Object and splitting and returing the type
    end
    candy_type.include?(candy)
  end
  def grab(candy)
    bag.shift
  end
  def take(number)
    @taken = bag.shift(number)
    @taken.map do |object|
      object
    end
  end
end
