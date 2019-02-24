require_relative './modes/clock'
require_relative './modes/say_stuff'

modes = %i[clock say_stuff]

case modes.sample
when :clock
  Clock.start
when :say_stuff
  SayStuff.start
end
