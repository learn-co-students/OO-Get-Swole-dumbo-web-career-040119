class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select do |member|
      member.lifter == self
      #binding.pry
    end
  end

  def gyms
    self.memberships.map do |gyms|
      #binding.pry
      gyms.gym.name
    end
  end

  def average_lift_total_of_all_lifters
    count = 0
    total_lift = 0
    Membership.all.map do |member|
       count += 1
       total_lift += member.lifter.lift_total

    end
    #binding.pry
    average = total_lift / count
    average
  end

  def total_cost_of_memberships
      #binding.pry
      total_cost = 0
      self.memberships.map do |member|
        #binding.pry
        total_cost += member.cost
      end
      total_cost
  end

  def sign_up(gym,cost)
    #binding.pry
    check = self.memberships.find do |member|
      member.gym == gym
    end
    unless check
      Membership.new(cost,self,gym)
    else
      return "Already a member!"
    end
    #binding.pry
  end

  def self.all
    @@all
  end
end
