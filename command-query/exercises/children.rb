class Children
  attr_accessor :oldest
  def initialize
    @oldest = []
  end
  def eldest
    @oldest.max_by do |child|
      child.age
    end
  end
  def << children
     @oldest << children
  end
end
