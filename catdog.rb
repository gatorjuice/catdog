require_relative './modes/say_stuff'

modes = %i[say_stuff]

case modes.sample
when :say_stuff
  SayStuff.start
end
