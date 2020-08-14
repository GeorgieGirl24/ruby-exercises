class Tinker
  attr_accessor :name, :items, :coin_purse
  def initialize(name)
    @name = name
    @items = {:items => ["mirror", "garlic"]}
    @coin_purse = 50
  end

  def greeting
    "Hello traveller, what might you need? Some barley, some rope,or how about some mead.
    I'm a tinker, a travelling thinker, and if you know what's best you shall pay me some heed.
    Here is my cart, its depths are beyond measure, and for a piece of gold you will get what you need!"
  end

  def inventory
    @items
  end
end
