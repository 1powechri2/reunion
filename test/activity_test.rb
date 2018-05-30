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
end
