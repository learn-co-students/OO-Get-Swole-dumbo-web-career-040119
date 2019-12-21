# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#Class A - Gym
#Class B - Lifter
#Class C - Membership - Tracker

la = Gym.new("Gold Lift")
ny = Gym.new("Tough Muscle")
tx = Gym.new("Lone Wolf")

tom = Lifter.new("Tom",50)
jim = Lifter.new("Jim",25)
kyle = Lifter.new("Kyle",30)
mary = Lifter.new("Mary",35)
sara = Lifter.new("Sara",40)

Membership.new(5,la,tom)
Membership.new(4,la,jim)
Membership.new(3,ny,kyle)
Membership.new(5,ny,mary)
Membership.new(6,la,sara)
Membership.new(7,ny,sara)

binding.pry

puts "Gains!"
