# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

blink = Gym.new ("Blink")
equinox = Gym.new ("Equinox")
crunch = Gym.new ("Crunch")

mallory = Lifter.new("Mallory", 500)
sylwia = Lifter.new("Sylwia", 100)
matt = Lifter.new("Matt", 600)
pete = Lifter.new("Pete", 1000)

membership_mallory = Membership.new(500, mallory, blink)
membership2_mallory = Membership.new(500, mallory, equinox)
membership3_mallory = Membership.new(100, mallory, crunch)
membership_pete = Membership.new(300, pete, equinox)
membership_matt = Membership.new(400, matt, equinox)
membership_sylwia = Membership.new(100, sylwia, blink)


puts sylwia.get_memberships

puts mallory.get_gyms

puts Lifter.average_lift

puts Lifter.all

puts mallory.total

puts blink.get_memberships

puts equinox.get_lifters

puts blink.lifter_names

puts equinox.lifts_total

binding.pry

puts "Gains!"
