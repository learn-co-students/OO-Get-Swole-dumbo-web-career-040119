# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

collette = Lifter.new("colette", 280)
sarah = Lifter.new("Sarah", 220)
natalia = Lifter.new("Natalia", 325)

golds = Gym.new("Gold's Gym")
lifetime = Gym.new("Lifetime Fitness")

sarah.sign_up(lifetime,50)
sarah.sign_up(golds,60)

collette.sign_up(lifetime,55)
collette.sign_up(golds,75)

natalia.sign_up(golds, 20)

binding.pry

puts "Gains!"
