class Gym
  attr_reader :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def memberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    memberships.map do |names|
      names.lifter
    end
  end

  def lifter_names
    lifters.map do |name|
      name.name
    end
  end

  def combined_lift
    lifts = lifters.map {|lift|lift.lift_total}
    lifts.inject(0){|sum,x| sum + x }
  end


  def self.all
    @@all
  end



end
