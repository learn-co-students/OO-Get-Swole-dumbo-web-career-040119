class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    lifter_memberships = Membership.all.select { |membership| membership.lifter == self}
  end

  def get_gyms
    lifter_gyms = self.get_memberships.map(&:gym)
  end

  def self.average_lift
    lift_nums = self.all.map(&:lift_total)
      lift_nums.inject{ |sum, el| sum + el }.to_f / lift_nums.size
  end

  def total
    total_cost = self.get_memberships.map(&:cost).inject(0, &:+)
  end

end


#DONE Get a list of all lifters
#DONE Get a list of all the memberships that a specific lifter has
#DONE Get a list of all the gyms that a specific lifter has memberships to
#DONE Get the average lift total of all lifters
#DONE Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym
