# Extract Noun into Verse

class BeerSong
  def self.lyrics
    verses(99, 0)
  end

  def self.verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |num| verse(num) }.join("\n")
  end

  def self.verse(verse_number)
    Verse.new(verse_number).to_s
  end
end

class Verse
  attr_reader :bottles

  def initialize(bottles)
    @bottles = bottles
  end

  def to_s
    if bottles == 0
      first_line + "Go to the store and buy some more, "\
      "99 bottles of beer on the wall.\n"
    else
      first_line + second_line
    end
  end

  def first_line
    "#{bottles_string.capitalize} on the wall, "\
    "#{bottles_string}.\n"
  end

  def second_line
    "Take #{bottles == 1 ? 'it' : 'one'} down and pass it around, "\
    "#{bottles_string(decrement: 1)} on the wall.\n"
  end

  def bottles_string(decrement: 0)
    num = bottles - decrement
    "#{num == 0 ? 'no more' : num} bottle#{num == 1 ? '' : 's'} of beer"
  end
end