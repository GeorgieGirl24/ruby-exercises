class TrickOrTreater
  attr_reader :costume
  attr_accessor :candies
  def initialize(costume)
    @candies = []
    @costume = costume
  end
  def dressed_up_as
    @costume.style #breaks the oject up
  end
  def bag
    candies
  end
  def has_candy?
    if candies.empty? == true
      false
    else
      true
    end
  end
  def candy_count
    candies.length
  end
  def eat
    candies.pop
  end
end
