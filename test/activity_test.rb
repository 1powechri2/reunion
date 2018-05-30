require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test
  def test_activity_exists
    activity = Activity.new('Funhouse', 500, 10)
    assert_instance_of Activity, activity
  end

  def test_activities_have_names
    activity = Activity.new('Funhouse', 500, 10)
    assert_equal 'Funhouse', activity.name
  end

  def test_base_cost
    activity = Activity.new('Funhouse', 500, 10)

    assert_equal 500, activity.base_cost
  end

  def test_cost_per_person
    activity = Activity.new('Funhouse', 500, 10)

    assert_equal 10, activity.cost_per_person
  end

  def test_can_take_participants
    activity = Activity.new('Funhouse', 500, 10)

    participant = 'El Dude'
    amount_paid = 500

    activity.add_participants(participant, amount_paid)

    assert_equal ({'El Dude' => 500}), activity.participants
  end

  def test_add_multiple_participants
    activity = Activity.new('Funhouse', 500, 10)

    participant = 'El Dude'
    amount_paid = 500

    activity.add_participants(participant, amount_paid)

    new_participant = 'Kat'
    amount_paid     = 505

    activity.add_participants(new_participant, amount_paid)

    expected = {'El Dude' => 500, 'Kat' => 505}
    actual   = activity.participants

    assert_equal expected, actual
  end

  def test_evaluate_total_cost
    activity = Activity.new('Funhouse', 500, 10)

    participant = 'El Dude'
    amount_paid = 500

    activity.add_participants(participant, amount_paid)

    new_participant = 'Kat'
    amount_paid     = 505

    activity.add_participants(new_participant, amount_paid)

    assert_equal 520, activity.evaluate_total_cost
  end
end
