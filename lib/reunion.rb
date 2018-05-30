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

  def eval_total_cost
    @activities.reduce(0) do |sum, activity|
      sum += activity.evaluate_total_cost
    end
  end
end
