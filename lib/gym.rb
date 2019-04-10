require 'pry'

class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  #Get a list of all gyms
  def self.all
    @all
  end
  #Get a list of all memberships at a specific gym
  def memberships
    Membership.all.select do |membership|
      membership.gym ==  self
    end
    # binding.pry
  end

#Get a list of all the lifters that have a membership to a specific gym
  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
    # Membership.all.select do |membership|
    #   membership.gym ==  self
    # end
  end
  #Get a list of the names of all lifters that have a membership to that gym
  def lifter_names
    self.lifters.map do |membership|
      membership.lifter.name
    end
    # binding.pry
  end
  #Get the combined lift total of every lifter has a membership to that gym

  def combined_lift
    test = self.lifters.map do |membership|
      membership.lifter.lift_total
    end
    test.sum
    binding.pry
  end
end
