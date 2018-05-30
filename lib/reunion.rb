class Reunion
  attr_reader :location,
              :activities,
              :owes_or_oweing

  def initialize(location)
    @location     = location
    @activities   = []
    @owes_or_oweing = Hash.new
  end

  def add_activity(activity)
    @activities.push(activity)
  end

  def eval_total_cost
    @activities.reduce(0) do |sum, activity|
      sum += activity.evaluate_total_cost
    end
  end

  def eval_payment
    @activities.each do |activity|
      activity.participants.keys.each do |participant|
        @owes_or_oweing[participant] = activity.owes_or_owed(participant)
      end
    end
  end
end
