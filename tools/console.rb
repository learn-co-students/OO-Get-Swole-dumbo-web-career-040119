# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gym_1 = Gym.new('Planet Fitness')
gym_2 = Gym.new('Retro')
gym_3 = Gym.new('YMCA')
gym_4 = Gym.new('Blink Fitness')
gym_5 = Gym.new('Ralls')

matt = Lifter.new("Matt",2000)
joey = Lifter.new('Joey', 145)
rocky = Lifter.new('Rocky', 200)
creed = Lifter.new('Creed', 215)
apollo = Lifter.new('Apollo', 250)
adam = Lifter.new('Adam', 2000)

Membership.new(30, joey, gym_4)
Membership.new(40, joey,gym_5)
Membership.new(45, rocky, gym_3)
Membership.new(15, creed, gym_2)
Membership.new(75, apollo, gym_1)
Membership.new(75,apollo,gym_2)
Membership.new(30,adam,gym_1)

binding.pry

# test code goes here



puts "Gains!"
