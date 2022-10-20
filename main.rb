# Use gets.chomp to get input from users and puts for output
# Isolate your I/O logic to one or two classes.
# Don't allow all your classes to interact (gets/puts) with the User
# Remember to build incrementally, writing small amounts of runnable code
# instead of writing out a whole bunch of classes/methods that are not yet testable/runnable.
# Use puts, raise some_val.inspect, and byebug to help with debugging

# Require game only, and create a new game

require 'pp'
require './game'

new_game = Game.new
