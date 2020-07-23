class Pills
  attr_accessor :pill_count
  def initialize(pill_count = 60)
    @pill_count = pill_count
  end
  def count
    pill_count
  end
  def pop
    self.pill_count -= 1
  end
end
