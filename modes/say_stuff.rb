require_relative '../lib/sentence_builder'

class SayStuff
  def self.start
    loop do
      sentence = SentenceBuilder.new(word_count: 10)
      sentence.build
      sentence.speak
      sleep 10
    end
  end
end
