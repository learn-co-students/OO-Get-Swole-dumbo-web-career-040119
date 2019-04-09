require 'pry'
require_relative '../lib/gym'
require_relative '../lib/lifter'
require_relative '../lib/membership'

mallory = Lifter.new("Mallory", 200)
sylwia = Lifter.new("Sylvia", 100)
matt = Lifter.new("Matt", 25)
pete = Lifter.new("Pete", 800)

planet_f = Gym.new("Planet Fitness")
equinox = Gym.new("Equinox")
crunch = Gym.new("Crunch")

adam = Lifter.new("Adam", 150)

mal1 = Membership.new(20, planet_f, mallory)
mal2 = Membership.new(40, crunch, mallory)
syl1 = Membership.new(30, equinox, sylwia)
syl2 = Membership.new(40, crunch, sylwia)
mat1 = Membership.new(40, crunch, matt)
pet1 = Membership.new(20, planet_f, pete)
pet2 = Membership.new(30, equinox, pete)
pet3 = Membership.new(40, crunch, pete)

binding.pry
