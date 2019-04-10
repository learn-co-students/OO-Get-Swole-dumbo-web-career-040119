# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gym1 = Gym.new("NYSC")
gym2 = Gym.new("Blink")
gym3 = Gym.new("YMCA")

lifter1 = Lifter.new("Elvis", 900)
lifter2 = Lifter.new("Elvis", 800)
lifter3 = Lifter.new("Eric", 500)

member1 = Membership.new(99, lifter1, gym1)
member2 = Membership.new(88, lifter2, gym1)
member3 = Membership.new(77, lifter3, gym1)
# member4 = Membership.new(77, "abc", gym1)
# member5 = Membership.new(77, "def", gym1)
# member6 = Membership.new(77, "xyz", gym1)

# test code goes here

binding.pry

puts "Gains!"
