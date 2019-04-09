class Lifter
  attr_reader :name, :lift_total
  attr_accessor :gym, :cost, :all_lifts

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    # @memberships = memberships
    @@all << self
  end

  def self.all
    @@all
  end

  def self.lift_total
    @all_lifts = self.all.map(&:lift_total)
  end

  def self.average_lift_total
    self.lift_total.inject{|sum, el| sum + el }.to_f / @all_lifts.size
  end

  def all_memberships
    all_memberships = Membership.all.select {|membership| membership.lifter == self}
  end

  def all_gyms
    all_gyms = self.all_memberships.map(&:gym)
  end

  def membership_all_cost
    all_cost =self.all_memberships.map(&:cost)
    all_cost.inject{|sum, el| sum + el }.to_f / all_cost.size
  end

  def new_membership(gym, cost)
    Membership.new(gym, self, cost)
  end

end


  #DONE:
      # Lifter

      # Get a list of all lifters
      # Get the average lift total of all lifters
      # Get a list of all the memberships that a specific lifter has
      # Get a list of all the gyms that a specific lifter has memberships to
      # Get the total cost of a specific lifter's gym memberships
      # Given a gym and a membership cost, sign a specific lifter up for a new gym
