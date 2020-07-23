class Catalogue
  attr_accessor :name, :products
  def initialize # information bout Product is coming in the the `<< method`
    @name = name
    @products = []
  end
  def cheapest
    name
  end
  def << product
    @products << product
    cost_of_products = self.products.map do |product|
      product.cost
    end
    cheapest = cost_of_products.min do |product|
        product
      end
    if cheapest == product.cost
      @name = product.name
    end
  end
end
