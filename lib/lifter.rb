class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  # Get a list of all lifters
  def self.all
    @@all
  end

  # Given a gym and a membership cost, sign a specific lifter up for a new gym.
  def sign_up(cost, gym)
    #Create membership
    Membership.new(cost, self, gym)
  end

  # Get a list of all the memberships that a specific lifter has
  def memberships
    # Iterate through all of the memberships (.all)
    Membership.all.select do |membership|
      # Select if the current owner of the membership(lifter) == the instance of
      # lifter this is being called on.
      membership.lifter == self
    end
  end

  # Get a list of all the gyms that a specific lifter has memberships to
  def gyms
    #Access the Memberships.all array
    #Determine whether or not the memberships are mine/lifters
    my_memberships = self.memberships
    #create array of gyms from the memberships array
    my_memberships.map do |membership|
      membership.gym
    end
  end

  # Get the average lift total of all lifters
  def avg_lift_total

  end

  # Get the total cost of a specific lifter's gym memberships
  def total_cost

  end

end
