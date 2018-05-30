class Activity
  attr_reader :name,
              :participants

  def initialize(name, participants = nil)
    @name = name
    @participants = participants
  end

  def add_participants(new_participant, amount_paid)
    @participants[new_participant] = amount_paid
  end
end
