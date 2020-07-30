class Item
  attr_accessor :item, :price_discount
  def initialize(item, price_discount)
    @item = item
    @price_discount = price_discount
  end
end
