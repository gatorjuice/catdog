require 'random-word'

class SentenceBuilder
  attr_reader :words

  def initialize(options)
    @word_count = options[:word_count]
    @words = []
  end

  def build
    @word_count.times do
      @words << RandomWord.nouns.next.gsub('_', ' ')
    end
  end

  def speak
    `say #{@words.join(' ')}`
  end
end
