class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #get a list of all gyms
    @@all
  end

  def membership #get a list of all memberships at a specifc gym
    Membership.all.select{|membership| membership.gym == self}
  end

  def membership_lifter
    self.membership.map{|membership| membership.lifter}
  end

  def membership_lifter_names #get a list of all the members' names at a specific gym
    Membership.all.select{|membership| membership.gym == self}.map{|membership|membership.lifter.name}
  end

  def sum_lift
    self.membership_lifter.map{|membership| membership.lift_total}.sum
  end
end
