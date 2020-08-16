gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/gnome'

class GnomeTest < Minitest::Test
  def test_it_exists
    gob = Gnome.new("Gob")

    assert_instance_of Gnome, gob
  end

  def test_it_has_a_name
    # skip
    gob = Gnome.new("Gob")

    assert_equal "Gob", gob.name
  end

  def test_it_has_a_job_by_default
    # skip
    gob = Gnome.new("Gob")

    assert "Protecter of the Earth", gob.job
  end

  def test_it_has_treasures_to_guard
    # skip
    gob = Gnome.new("Gob")
    items = {:items => ["iron ore", "rubies", "crystals"]}

    assert items, gob.treasures
  end

  def test_it_can_dig_for_more_treasure
    # skip
    gob = Gnome.new("Gob")
    gob.dig
    items = {:items => ["iron ore", "rubies", "crystals"]}

    assert items, gob.treasures
  end

  def test_it_cant_be_that_easy
    # skip
    gob = Gnome.new("Gob")
    gob.rewarded?
    refute gob.rewarded?
    10.times do
      gob.dig
    end
    assert gob.rewarded?
    gob.get_reward("silver")
    items = {:items => ["iron ore", "rubies", "crystals", "silver"]}
    assert_equal items, gob.treasures
  end

  def test_it_carries_a_sword
    # skip
    gob = Gnome.new("Gob")
    joyuse = Sword.new("Joyuse", "titanium", gob)
    assert_equal [], joyuse.components
    gob << joyuse
    assert_equal [joyuse], gob.sheath
    assert gob.sheath_occupied?
  end

  def test_it_can_trade_upgrades_to_sword_with_treasure
    # skip
    gob = Gnome.new("Gob")
    joyuse = Sword.new("Joyuse", "titanium", gob)
    gob << joyuse
    swordsmith = Swordsmith.new("Masamune")
    items = {:items => ["valyrian steel", "garnet", "ash"]}
    assert_equal items, swordsmith.inventory
    assert_equal :strengthening, swordsmith.speciality

    10.times do
      gob.dig
    end
    assert gob.rewarded?
    gob.get_reward("silver")
    items = {:items => ["iron ore", "rubies", "crystals", "silver"]}
    assert_equal items, gob.treasures
    gob.trade(swordsmith, "silver")
    items = {:items => ["iron ore", "rubies", "crystals"]}
    assert_equal items, gob.treasures
    gob.upgrade
    refute gob.sheath_occupied?
    swordsmith << joyuse
    assert_equal [joyuse], swordsmith.holdings
    swordsmith.improve(gob)
    items = {:items => ["garnet", "ash", "silver"]}
    assert_equal items, swordsmith.inventory
    assert gob.sheath_occupied?
    assert_equal ["valyrian steel"], joyuse.components
  end

  def test_it_ward_off_a_person_from_stealing_the_treasure
    skip
    gob = Gnome.new("Gob")
  end

  def test_it_can_make_more_improvements_to_the_sword
    skip
    gob = Gnome.new("Gob")
  end

  def test_it_can_protect_better_with_more_upgrades
    skip
    gob = Gnome.new("Gob")
  end

end
