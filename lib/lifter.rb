class Lifter
  @@all = []
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def self.avg_lift_total
    all_lifts = self.all.map(&:lift_total)
    all_lifts.inject{|sum, num| sum + num}.to_f / all_lifts.length
  end

  def memberships
    Membership.all.select {|ms| ms.lifter == self}
  end

  def gyms
    self.memberships.map(&:gym)
  end

  def cost
    total_cost = self.memberships.map(&:cost)
    total_cost.inject{|sum, num| sum + num}
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end

end
