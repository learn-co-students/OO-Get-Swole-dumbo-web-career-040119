class Gym
  attr_reader :name, :memberships
  attr_accessor :lift_total

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def all_memberships
    all_memberships = Membership.all.select {|membership| membership.gym == self}
  end

  def all_lifters
    all_lifters = self.all_memberships.map(&:lifter)
  end

  def lift_sum
    all_lifters = self.all_lifters.map(&:lift_total)
    the_sum = all_lifters.inject(0){|sum,x| sum + x }
    the_sum
  end

  def all_lifters_names
    all_names = self.all_lifters.map(&:name)
  end

  #
  # def all_lifters_names
  #   all_lifters_names = self.all_lifters.select{|key, value| value == "name"}
  # end

end




  # Gym

# DONE:
  # Get a list of all gyms
  # Get a list of all memberships at a specific gym
  # Get a list of all the lifters that have a membership to a specific gym
  # Get the combined lift total of every lifter has a membership to that gym
  # Get a list of the names of all lifters that have a membership to that gym
