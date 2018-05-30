class Activity
  attr_reader :name,
              :participants

  def initialize(name)
    @name = name
    @participants = Hash.new
  end

  def add_participants(new_participant, amount_paid)
    @participants[new_participant] = amount_paid
  end
end
