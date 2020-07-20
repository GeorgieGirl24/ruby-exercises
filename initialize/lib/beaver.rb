class Beaver
  attr_reader :name

  def initialize(name)
      @name = name
  end

  def name
    sentence = "#{@name} the Beaver"
    return sentence
  end

end
