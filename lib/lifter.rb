class Lifter
  attr_reader :name, :lift_total
  @@all =[]

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all #get a list of all lifters
    @@all
  end

  def membership_cards #get a list of all memberships a lifter has
    Membership.all.select{|membership| membership.lifter == self}
  end

  def membership_gyms #get a list of gyms that a lifter has memberships at
    Membership.all.select{|membership| membership.lifter == self}.map{|membership| membership.gym}
  end

  def self.average_lift #get average lift
    self.all.map{|lifter| lifter.lift_total}.sum/@@all.size
  end

  def average_cost #get average cost
    Membership.all.select{|membership|membership.lifter==self}.map{|membership|membership.cost}.sum
  end

  def sign_up(gym, cost) #sign up
    gym = Membership.new(gym, self, cost)
  end
end
