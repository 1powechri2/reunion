require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_activity_exists
    activity = Activity.new('Funhouse')
    assert_instance_of Activity, activity
  end

  def test_activities_have_names
    activity = Activity.new('Funhouse')
    assert_equal 'Funhouse', activity.name
  end

  def test_can_take_participants
    participants = participants = {'El Dude' => 500}
    activity = Activity.new('Funhouse', participants)
    activity = Activity.new('Funhouse', participants)

    assert_equal 'El Dude', activity.participants.key(500)
  end

  def test_add_participants
    participants = {'El Dude' => 500}
    activity = Activity.new('Funhouse', participants)

    new_participant = 'Kat'
    amount_paid     = 505

    activity.add_participants(new_participant, amount_paid)

    expected = {'El Dude' => 500, 'Kat' => 505}
    actual   = activity.participants

    assert_equal expected, actual
  end
end
