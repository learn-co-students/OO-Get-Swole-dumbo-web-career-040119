class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships

    memberships = Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    # Membership.all.select do |membership|
    #   membership.lifter == self
    # end

    self.memberships.map(&:gym)
  end

  def self.average_lift_total
    total_lift = self.all.map {|lifter| lifter.lift_total}
    total = 0
    total_lift.each do |lift|
      total += lift
    end
    avg = (total.to_f / self.all.length)
    avg
  end

  def self.average_lift_total
    total = self.all.map(&:lift_total)
    sum = total.reduce {|sum, el| sum += el}
    avg = (sum.to_f / self.all.length)
    return avg
  end

  def total_cost_of_lifter_gym_memberships
    cost = self.memberships.map(&:cost)
      cost.inject{|sum,e| sum += e }
    # Membership.all.inject{|sum,e| sum += e }
  end

  def total
   total_cost = self.get_memberships.map(&:cost).inject(0, &:+)
 end

 def new_sign_up(gym, cost)
    Membership.new(cost, self, gym)
 end

 def self.all
   @@all
 end

end
