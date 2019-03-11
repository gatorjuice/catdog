require_relative '../lib/sentence_builder'

class SayStuff
  def self.start
    loop do
      SentenceBuilder.new.speak
      sleep rand(60)
    end
  end
end
