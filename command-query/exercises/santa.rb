class Santa
  attr_accessor :fit, :count
  def initialize(fit = true, count = 0)
    @fit = fit
    @count = count
  end
  def fits?
    fit
  end
  def eats_cookies
    self.count += 1
    if count >= 3
      self.fit = false
    end
  end
end
