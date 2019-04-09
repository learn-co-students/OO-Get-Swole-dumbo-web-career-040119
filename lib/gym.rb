class Gym
  attr_reader :name

  ALL = []


  def initialize(name)
    @name = name
    ALL << self

  end

  # Get a list of all gyms.
  def self.all
    ALL
  end

  # Get a list of all memberships at a specific gym.
  def memberships
    #Access all memberships => [Memberships]
    #determine wheter or not the membership belongs to this gym (self)
    Membership.all.select do |m|
      m.gym == self
    end
  end

  # Get a list of all the lifters that have a membership to a specific gym.
  def lifters
    #Access all memberships make array of lifters from said memberships
    self.memberships.map do |m|
      m.lifter
    end
  end

  # Get a list of the names of all lifters that have a membership to that gym.
  def lifter_names
    #get lifters then get their names
    self.lifters.map do |l|
      l.name
    end
  end

  # Get the combined lift total of every lifter has a membership to that gym
  def total_lifter_liftable_weight
    lifter_liftable_weight = 0
    #get lifters
    self.lifters.each do |l|
      #add all of their weight
      lifter_liftable_weight += l.lift_total
    end
    lifter_liftable_weight
  end

end
