require_relative '../lib/sentence_builder'
require 'audio-playback'

class SayStuff
  def self.start
    loop do
      @playback = AudioPlayback.play("/Users/jgates/Downloads/#{('a'..'t').to_a.sample}.wav")
      @playback.block

      SentenceBuilder.new.speak

      sleep rand(60)
    end
  end
end
