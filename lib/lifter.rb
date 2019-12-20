require 'pry'
class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  #Get a list of all lifters
  def self.all
    @@all
  end
  #Get a list of all the memberships that a specific lifter has
  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end
#Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    Gym.all.select do |gym|
      gym.lifter == self
    end
  end
  #Get the average lift total of all lifters
  def self.avg_lift_total
    lifts = self.all.map do |lifter|
      lifter.lift_total
    end

    lifts.sum / lifts.length
    # binding.pry
  end
  #Get the total cost of a specific lifter's gym memberships
  def total_cost
     costs = self.memberships.map do |membership|
      membership.cost
    end

    costs.sum
    # binding.pry
  end
  #Given a gym and a membership cost, sign a specific lifter up for a new gym
  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end
  # binding.pry
end
