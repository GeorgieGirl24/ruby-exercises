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

    assert pegasus.flying
  end

  def test_it_can_fly
    # skip
    pegasus = Pegasus.new("Pegasus")

    assert pegasus.flying?
  end

  def test_it_cant_rest_if_it_is_flying
    # skip
    pegasus = Pegasus.new("Pegasus")

    refute pegasus.resting?
  end

  def test_it_can_rest
    # skip
    pegasus = Pegasus.new("Pegasus")
    pegasus.land
    pegasus.take_a_nap

    assert pegasus.resting?
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
    pegaus.journey_to_another_realm

    assert_equal "You can't travel with your feet on the ground!", pegaus.journey_to_another_realm
  end

  def test_it_can_travel_to_the_immortal_realm
    skip
  end

  def test_it_cant_be_flying_if_it_is_on_the_ground
    skip
  end

  def test_it_can_create_pools_when_it_touches_down
    skip
  end

  def test_it_can_only_create_four_pools_before_rest_must_be_taken
    skip
  end

end
