gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/pegasus'

class PegasusTest < Minitest::Test
  def test_it_exists
    pegasus = Pegasus.new("Pegasus")

    assert_instance_of Pegasus, pegasus
  end

  def test_it_has_a_name
    # skip
    pegasus = Pegasus.new("Pegasus")

    assert_equal "Pegasus", pegasus.name
  end

  def test_it_born_to_flying
    # skip
    pegasus = Pegasus.new("Pegasus")

    assert pegasus.fly
  end

  def test_it_can_fly
    # skip
    pegasus = Pegasus.new("Pegasus")

    assert pegasus.flying?
  end

  def test_it_cant_be_grounded_if_it_is_flying
    # skip
    pegasus = Pegasus.new("Pegasus")
# require 'pry';binding.pry
    refute pegasus.grounded?
  end

  def test_it_can_rest
    # skip
    pegasus = Pegasus.new("Pegasus")
    pegasus.land
    pegasus.take_a_nap

    refute pegasus.flying?
    assert pegasus.grounded?
  end

  def test_it_is_created_in_the_mortal_realm
    # skip
    pegasus = Pegasus.new("Pegasus")

    assert pegasus.mortal_realm
  end

  def test_it_must_be_flying_to_travel_to_different_realms
    # skip
    pegasus = Pegasus.new("Pegasus")
    pegasus.land
    pegasus.take_a_nap
    pegasus.journey_to_another_realm

    assert_equal "You can't travel with your feet on the ground!", pegasus.journey_to_another_realm
  end


  def test_it_can_travel_to_the_immortal_realm
    # skip
    pegasus = Pegasus.new("Pegasus")
    pegasus.land
    pegasus.take_a_nap
    pegasus.take_off
    pegasus.fly
    pegasus.journey_to_another_realm

    assert pegasus.immortal_realm
    refute pegasus.mortal_realm
    assert_equal "Time and space are no match for the amazing!", pegasus.journey_to_another_realm
  end

  def test_it_can_create_pools_when_it_touches_down
    # skip
    pegasus = Pegasus.new("Pegasus")
    assert [], pegasus.pools
    blue_lagoon = Pool.new("Blue Lagoon", :medium, "Kastoria")
    pegasus << blue_lagoon
    pegasus.land
    pegasus.take_off
    refute pegasus.grounded?
    pegasus.land
    shimmering_lake = Pool.new("Shimmering Lake", :large, "Thessaloniki")
    pegasus << shimmering_lake
    pegasus.take_a_nap

    assert_instance_of Pool, blue_lagoon
    assert_instance_of Pool, shimmering_lake
    assert_equal 2, pegasus.pools.length
  end

  def test_it_can_only_create_four_pools_before_rest_must_be_taken
    # skip
    pegasus = Pegasus.new("Pegasus")
    assert [], pegasus.pools
    blue_lagoon = Pool.new("Blue Lagoon", :medium, "Kastoria")
    pegasus << blue_lagoon
    pegasus.land
    pegasus.take_off
    refute pegasus.grounded?
    pegasus.land
    shimmering_lake = Pool.new("Shimmering Lake", :large, "Thessaloniki")
    pegasus << shimmering_lake
    pegasus.take_off
    pegasus.journey_to_another_realm
    assert pegasus.immortal_realm
    pegasus.journey_to_another_realm
    refute pegasus.immortal_realm
    pegasus.land
    sapphire_pool = Pool.new("Sapphire Pool", :small, "Aetos")
    pegasus << sapphire_pool
    pegasus.take_off
    pegasus.land
    crown_hill = Pool.new("Crown Hill", :tiny, "Stymfalia")
    pegasus << crown_hill
    pegasus.take_off

    refute pegasus.flying?
    assert_equal "You MUST rest!", pegasus.take_off
  end

end
