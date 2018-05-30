class Activity
  attr_reader :name,
              :participants

  def initialize(name, participants = nil)
    @name = name
    @participants = participants
  end
end
