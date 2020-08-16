class Gnome
  attr_accessor :name, :job, :items, :reward, :count, :sheath
  def initialize(name, job="Protecter of the Earth", reward=false)
    @name = name
    @job = job
    @items = {:items => ["iron ore", "rubies", "crystals"]}
    @count = 0
    @reward = reward
    @sheath = []
  end

  def treasures
    @items
  end

  def dig
    @count += 1
  end

  def rewarded?
    if @count >= 10
      @reward = true
    end
    @reward
  end

  def get_reward(reward)
    if @reward == true
      @items[:items] << reward
    end
  end

  def << (sword)
    @sheath << sword
  end

  def sheath_occupied?
    @sheath.include?(@sheath[0])
  end

  def upgrade
    @sheath.clear
  end

  def trade(trader, payment)
    pay = @items[:items].find do |item|
      item == payment
    end
    left_over = @items[:items].delete_if do |item|
        item == payment
    end
    trader.items[:items] << pay

  end
end

class Sword
  attr_accessor :name, :material, :owner, :components
  def initialize(name, material, owner)
    @name = name
    @material = material
    @components = []
    @owner = owner
  end
end


class Swordsmith
  attr_accessor :name, :items, :speciality, :holdings
  def initialize(name)
    @name = name
    @items = {:items => ["valyrian steel", "garnet", "ash"]}
    @speciality = :strengthening
    @holdings = []
  end

  def inventory
    @items
  end

  def << (sword)
    @holdings << sword
  end

  def improve(owner)
    @holdings.each do |sword|
      @items.each do |item, elements|
        elements
        upgraded_bit = elements.find do |thing|
          thing == "valyrian steel"
        end
        sword.components << upgraded_bit
        elements.delete(upgraded_bit)
      end
    end
    owner << @holdings[0]
  end
end
