class TrickOrTreater
  attr_accessor :costume, :bag, :candy
  def initialize(costume, sugar_level = 0)
    @costume = costume
    @bag = []
    @sugar_level = sugar_level
    @candy = candy
  end
  def dressed_up_as
    costume.style
  end
  def empty?
    bag.empty?
  end
  def has_candy?
    if bag.empty? == true
      false
    else
      true
    end
  end
  def candy_count
    bag.count
  end
  def eat
    eaten_candy = bag.pop
    @sugar_level += eaten_candy.sugar
  end
  def sugar_level
    p candy
    @sugar_level
  end

end
