class Cupcake < Struct.new(:kind, :sugar)
  attr_accessor :flavor, :sugar
  def initialize(flavor, sugar)
    @flavor = flavor
    @sugar = sugar
  end
  def flavor
    @flavor
  end
end
