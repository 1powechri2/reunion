class Activity
  attr_reader :name,
              :base_cost,
              :cost_per_person,
              :participants

  def initialize(name, base_cost, cost_per_person)
    @name = name
    @base_cost = base_cost
    @cost_per_person = cost_per_person
    @participants = Hash.new
  end

  def add_participants(new_participant, amount_paid)
    @participants[new_participant] = amount_paid
  end

  def evaluate_total_cost
    total_per_person = @cost_per_person * @participants.keys.length
    return @base_cost + total_per_person
  end

  def total_cost_per_person
    (@base_cost / @participants.keys.length) + @cost_per_person
  end

  def owes_or_owed(person)
    total_cost_per_person - @participants[person]
  end
end
