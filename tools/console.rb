# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

rei = Lifter.new('Rei',200)
chris = Lifter.new('Chris',300)
kring = Lifter.new('Kring',50)
guy = Lifter.new('Guy',600)
rock = Lifter.new('Rock',1000)

cko = Gym.new('CKO - Kickboxing')
retro = Gym.new('Retro Fitness')
la_fitness = Gym.new('LA Fitness')
regular = Gym.new('Regular Gym')

Membership.new(100,rei,cko)
Membership.new(20,rei,retro)
Membership.new(100,chris,cko)
Membership.new(120,rock,la_fitness)
Membership.new(10,guy,regular)
Membership.new(100,kring,cko)
Membership.new(120,chris,la_fitness)
Membership.new(20,guy,retro)

rei.memberships
rei.gyms
rei.total_cost_of_memberships

cko.memberships
cko.lifters

rei.average_lift_total_of_all_lifters
rei.sign_up(regular,10)
binding.pry

puts "Gains!"
