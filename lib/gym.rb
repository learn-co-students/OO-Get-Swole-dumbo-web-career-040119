class Gym
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|ms| ms.gym == self}
  end

  def lifters
    self.memberships.map(&:lifter)
  end

  def lifter_names
    self.lifters.map(&:name)
  end

  def combined_total
    total = self.lifters.map(&:lift_total)
    total.inject{|sum, num| sum + num}
  end

end
