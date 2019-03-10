require_relative '../lib/sentence_builder'

class SayStuff
  def self.start
    loop do
      SentenceBuilder.new(word_count: 10).speak
      sleep 2
    end
  end
end
