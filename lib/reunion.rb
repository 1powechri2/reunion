class Reunion
  attr_reader :location,
              :activities

  def initialize(location)
    @location   = location
    @activities = []
  end

  def add_activity(activity)
    @activities.push(activity)
  end
end
