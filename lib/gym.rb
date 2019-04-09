class Gym
  attr_reader :name, :memberships
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    gym_memberships = Membership.all.select { |membership| membership.gym == self}
  end

  def get_lifters
    gym_lifters = self.get_memberships.map(&:lifter)
  end

  def lifter_names
    self.get_lifters.map(&:name)
  end

  def lifts_total
    lifts = self.get_lifters.map(&:lift_total).inject(0, &:+)
  end

end


#DONE Get a list of all gyms
#DONE Get a list of all memberships at a specific gym
#DONE Get a list of all the lifters that have a membership to a specific gym
#DONE Get a list of the names of all lifters that have a membership to that gym
#DONE Get the combined lift total of every lifter has a membership to that gym
