require 'random-word'

class SentenceBuilder
  attr_reader :words

  def initialize(options)
  end

  def sentence
    "#{subjects.sample} the #{adjective} and, #{adjective} #{noun}," \
    "#{second_phrase_starts.sample}, the #{noun}, has #{adjective} #{noun}"
  end

  def speak
    `say "#{sentence}"`
  end

  private

  def noun
    RandomWord.nouns.next.gsub('_', ' ')
  end

  def adjective
    RandomWord.adjs.next.gsub('_', ' ')
  end

  def subjects
    [
      'I love',
      'I want',
      'where is',
      'please help me find',
      'cats love',
      'dogs love',
      'so many lusting after',
      'my mother hates',
      'my father wanted',
      'my cousing takes',
      'all of my friends prefer',
      'your favorite part of living is'
    ].map{ |phrase| phrase.gsub(' ', ', ')}
  end

  def second_phrase_starts
    [
      'becaws',
      'unless',
      'assuming',

    ]
  end
end
