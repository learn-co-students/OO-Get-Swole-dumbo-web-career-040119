class Lifter
  attr_reader :name, :lift_total

 @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms_for_lifter
    memberships.map do |gym_name|
      gym_name.gym
    end
  end


  def self.average_lift_total
    all_lifts = self.all.map(&:lift_total)
    all_lifts.inject{|sum, el| sum + el }.to_f / all_lifts.size
  end

  def total_cost_memberships
    total = memberships.map {|cost|cost.cost}
    total.inject(0){|sum,x| sum + x }
  end

  def sign_up(cost,gym)
    Membership.new(cost,self,gym)
  end

  def self.all
    @@all
  end


end
