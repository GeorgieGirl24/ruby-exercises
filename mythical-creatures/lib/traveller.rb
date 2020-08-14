class Traveller
  attr_accessor :name, :coin_purse, :quest_count, :inventory, :stoned, :bitten
  def initialize(name="George", coin_purse=0, stoned=false, bitten=false)
    @name = name
    @coin_purse = coin_purse
    @quest_count = 0
    @inventory = {}
    @stoned = stoned
    @bitten = bitten
  end

  def quest(part1, part2)
    quests = []
    if part1.length == part2.length
      quests << part1
      quests << part2
      @coin_purse += 1
    end
    quests.each do |quest|
      quest.length == 2
        quest.split('').each do |letter|
          if letter != 'A'
            @quest_count += 1
          end
          if letter == 'D'
            @quest_count -= 1
          end
        end
      end
    @quest_count
  end

  def pay_the_tinker(seller)
    @coin_purse -= 1
    seller.coin_purse += 1
  end

  def purchase(seller, item)
    if @coin_purse == 0
      "You haven't got the coin lad"
    elsif !(seller.inventory[:items].include?(item))
      "I'm afraid I'm fresh out"
    else
      pay_the_tinker(seller)
      unsold_items = seller.inventory.values.flatten.reject {|element| element == item}
      seller.inventory[:items] = unsold_items
      @inventory[:items] = item
    end
  end

  def has_value?(item)
    @inventory.include?(item)
  end

  def quest_two(number)
    @coin_purse += 1
    cubed_number = (1..number).sum do |number|
      number ** 3
    end
    cubed_number
  end

  def power_of_vim(adversary)
    adversary.statues.each do |statue|
      statue.stoned = false
    end
    adversary.statues.clear
  end

  def quest_items(magic)
    @inventory[:magic_items] = magic
  end

  def bitten?
    bitten
  end

  def give_item(someone_else, item)
    someone_else.inventory[:magic_items] = item
    if someone_else.inventory[:magic_items] = "wolfsbane"
      someone_else.inventory.delete(:magic_items)
      p someone_else.protection = true
    end
  end
end
