class Hobbit
  attr_accessor :name, :disposition, :age, :adult, :old, :has_ring, :short
  def initialize(name, disposition="homebody", age=0, adult=false, old=false)
    @name = name
    @disposition = disposition
    @age = age
    @adult = adult
    @old = old
    @has_ring = has_ring
    @short = true
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @adult = @age >= 33
  end

  def old?
    @old = @age >= 101
  end

  def has_ring?
    @has_ring = @name == "Frodo"
  end

  def is_short?
    short
  end
end
