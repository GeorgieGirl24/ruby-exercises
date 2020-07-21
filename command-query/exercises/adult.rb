class Adult
  attr_accessor :sober, :beer_count
  def initialize(sober = true, beer_count = 0)
    @sober = sober
    @beer_count = beer_count
  end
  def sober?
    # p beer_count
    if beer_count == 0
      "Adult should really be sober right now."
      sober
    else
      sober
    end
    # if beer_count == 1
      # self.sober = "Still sober."
    # end
    # if beer_count == 2
      # self.sober = "Not drunk yet."
    # end
    # if beer_count == 3
      # self.sober = "Yeah, OK. The adult is drunk."
    # end
    # if beer_count == 4
      # self.sober = "The adult doesn't get more sober from drinking more."
    # end
  end
  def consume_an_alcoholic_beverage

    self.beer_count += 1
    if beer_count == 1
      "Still sober."
    end
    if beer_count == 2
      "Not drunk yet."
    end
    if beer_count == 3
      "Yeah, OK. The adult is drunk."
      self.sober = false
    end
    if beer_count == 4
      "The adult doesn't get more sober from drinking more."
      self.sober = false
    end
  end
end
