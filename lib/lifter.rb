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

  def own_membership
    gym_list = Membership.all.select do |x|
      x.lifter == self
    end
    return gym_list
  end

  def own_gyms
    gym_list = own_membership
    gym_list_a = gym_list.map do |y|
      y.gym
    end
    return gym_list_a
  end

  def self.avg_lift
    lift_list = self.all.map do |x|
      x.lift_total
    end

    lift_amount = 0
    lift_list.each do |x|
      lift_amount += x
    end

    lift_avg = (lift_amount.to_f/lift_list.size.to_f).round(2)
    return lift_avg
  end

  def membership_cost
    gym_list = own_membership
    total_cost = 0
    gym_list.each do |x|
      total_cost += x.cost
    end
  end

  def new_membership(gym,member_cost)
    Membership.new(member_cost,gym,self)
  end
end
