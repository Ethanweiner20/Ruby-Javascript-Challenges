class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    candidates.select { |candidate| anagram?(candidate) }
  end

  private

  def anagram?(candidate)
    candidate = candidate.downcase
    word != candidate && word.chars.tally == candidate.chars.tally
  end
end