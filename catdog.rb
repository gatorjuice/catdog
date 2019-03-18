require_relative './modes/say_stuff'
require_relative './modes/play_song'

modes = %i[say_stuff play_song]

case modes.sample
when :say_stuff
  SayStuff.start
when :play_song
  PlaySong.start
end
