# Scrabble Score

class Scrabble
  attr_reader :word

  LETTER_VALUES = {
    %w(a e i o u l n r s t) => 1,
    %w(d g) => 2,
    %w(b c m p) => 3,
    %w(f h v w y) => 4,
    %w(k) => 5,
    %w(j x) => 8,
    %w(q z) => 10
  }

  def initialize(word)
    @word = word
  end

  def self.score(word)
    new(word).score
  end

  def score
    return 0 unless valid?
    word.chars.reduce(0) do |total, char|
      letter_value = LETTER_VALUES.find do |letters, _|
        letters.include?(char.downcase)
      end
      total + letter_value[1]
    end
  end

  def valid?
    word && word.match(/\A[a-zA-Z]+\z/)
  end
end