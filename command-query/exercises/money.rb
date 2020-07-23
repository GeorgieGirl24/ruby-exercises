class Money
  attr_accessor :dollar_amount
  def initialize(dollar_amount = 0)
    @dollar_amount = dollar_amount
  end
  def amount
    @dollar_amount
  end
  def earn(dollar)
    self.dollar_amount += dollar
  end
  def spend(dollar)
    spent_money = self.dollar_amount -= dollar
    if (spent_money) < 0
      self.dollar_amount = 0
      "You can't spend what you don't have"
    else
      return spent_money
    end
  end
end
