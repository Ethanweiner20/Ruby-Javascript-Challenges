# Diamond

# Solution 1: Split into half

# class Diamond
#   ALPHABET = ('A'..'Z').to_a

#   def self.make_diamond(max_letter)
#     total_width = spacing(max_letter) + 2
#     bottom_half = retrieve_bottom_half(max_letter, total_width)
#     top_half = bottom_half.reverse
#     top_half.pop
#     (top_half + bottom_half).join('')
#   end

#   def self.retrieve_bottom_half(max_letter, total_width)
#     ('A'..max_letter).to_a.reverse.each_with_object([]) do |letter, rows|
#       rows << row(letter, total_width)
#     end
#   end

#   def self.row(letter, total_width)
#     inner = letter == 'A' ? 'A' : (letter + ' ' * spacing(letter) + letter)
#     inner.center(total_width) + "\n"
#   end

#   def self.spacing(letter)
#     ALPHABET.index(letter) * 2 - 1
#   end
# end

# Solution 2: Create all rows manually

class Diamond
  ALPHABET = ('A'..'Z').to_a

  def self.make_diamond(max_letter)
    total_width = spacing(max_letter) + 2
    letters = ('A'..max_letter).to_a + ('A'...max_letter).to_a.reverse
    letters.reduce('') do |diamond, letter|
      diamond + row(letter, total_width)
    end
  end

  def self.row(letter, total_width)
    inner = letter == 'A' ? 'A' : (letter + ' ' * spacing(letter) + letter)
    inner.center(total_width) + "\n"
  end

  def self.spacing(letter)
    ALPHABET.index(letter) * 2 - 1
  end
end