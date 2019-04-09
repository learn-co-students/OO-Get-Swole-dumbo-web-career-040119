# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Lifter1", 10)
lifter2 = Lifter.new("Lifter2", 20)
lifter3 = Lifter.new("Lifter3", 30)
lifter4 = Lifter.new("Lifter4", 40)
lifter5 = Lifter.new("Lifter5", 50)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")

membership1_0 = Membership.new(10, lifter1, gym1)
membership1_1 = Membership.new(10, lifter1, gym2)
membership2 = Membership.new(20, lifter2, gym2)
membership3 = Membership.new(30, lifter3, gym1)
membership4 = Membership.new(40, lifter4, gym2)
membership5 = Membership.new(50, lifter5, gym1)
membership6 = Membership.new(60, lifter5, gym2)

binding.pry

puts "Gains!"
