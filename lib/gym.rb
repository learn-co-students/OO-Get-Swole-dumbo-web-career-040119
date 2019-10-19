class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    #binding.pry
    Membership.all.select do |membership|
      membership.gym == self
      #binding.pry
    end
  end

  def lifters
    self.memberships.map do |member|
      member.lifter
      #binding.pry
    end
    
  end

  def name_of_lifters
    self.memberships.map do |member|
      #binding.pry
      member.lifter.name
    end
  end

  def combined_lift_total
    lift_total = 0
    self.lifters.map do |member|
      lift_total += member.lift_total
    end
    lift_total
  end

  def self.all
    @@all
  end
end
