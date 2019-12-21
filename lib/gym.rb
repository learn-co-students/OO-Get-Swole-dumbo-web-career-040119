class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    memberships_list = Membership.all.select do |x|
      x.gym == self
    end
    return memberships_list
  end

  def gym_lifters
    memberships_list = memberships
    gym_lifter_list = memberships_list.map do |y|
      y.lifter
    end
    return gym_lifter_list
  end

  def lifter_names
    name_list = gym_lifters
    name_list_a = name_list.map do |z|
      z.name
    end
    return name_list_a
  end

  def total_lift
    pre_total = gym_lifters
    post_total = 0
    pre_total.each do |a|
      post_total += a.lift_total
    end

    return post_total
  end
end
