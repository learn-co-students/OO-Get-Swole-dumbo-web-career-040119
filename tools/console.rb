require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



twenty4 = Gym.new("24 Hour Fitness")
blink = Gym.new("Blink Fitness")
equinox = Gym.new("Equinox")

andrew = Lifter.new("Andrew", 1237854)
joey = Lifter.new("Joey", 100293)
dave = Lifter.new("Dave", 1000)
adam = Lifter.new("Adam", 24356)
james = Lifter.new("James", 7000)
chris = Lifter.new("Chris", 784634)

cheap = Membership.new(25, andrew, twenty4)
poor = Membership.new(40, joey, twenty4)
middle = Membership.new(60, dave, blink)
upper_middle = Membership.new(70, adam, blink)
expensive = Membership.new(100, james, equinox)
luxury = Membership.new(200, chris, equinox)



binding.pry
 puts "amazing"
