require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_reunion_exists
    reunion = Reunion.new("Dracula's Castle")

    assert_instance_of Reunion, reunion
  end

  def test_it_has_location
    reunion = Reunion.new("Dracula's Castle")

    assert_equal "Dracula's Castle", reunion.location
  end

  def test_it_adds_activities
    reunion    = Reunion.new("Dracula's Castle")
    activity_1 = Activity.new("Blood Bath", 200, 20)
    activity_2 = Activity.new("Masquerade Ball", 500, 100)

    reunion.add_activity(activity_1)
    reunion.add_activity(activity_2)

    assert_equal "Blood Bath", reunion.activities[0].name
    assert_equal "Masquerade Ball", reunion.activities[1].name
  end
end
