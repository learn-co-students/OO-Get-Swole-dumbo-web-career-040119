class Membership
  attr_reader :cost, :gym, :lifter
  @@all = []


  def initialize(gym, lifter, cost)
    @cost = cost
    @gym = gym
    @lifter = lifter
    @@all << self
  end

  def self.all #get a list of all membership
    @@all
  end


end
