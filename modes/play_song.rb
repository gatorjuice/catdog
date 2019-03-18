require_relative '../lib/sentence_builder'

class PlaySong
  def self.start
    loop do
      song_file = "#{('a'..'t').to_a.sample}.wav"
      `play "~/Downloads/#{song_file}"`

      sleep rand(60)
    end
  end
end
