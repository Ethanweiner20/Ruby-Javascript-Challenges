# Roman Numerals

# Solution 1

=begin
class RomanNumeral
  DECIMAL_TO_NUMERALS = {
    0 => %w(I V X),
    1 => %w(X L C),
    2 => %w(C D M)
  }
  def initialize(decimal)
    @decimal = decimal
  end

  def to_roman
    roman_numeral = ''
    decimal.digits.each_with_index do |digit, place|
      roman_numeral.prepend(to_roman_digit(digit, place))
    end
    roman_numeral
  end

  def to_roman_digit(digit, place)
    if digit == 0
      ''
    elsif place == 3
      DECIMAL_TO_NUMERALS[2][2] * digit
    else
      numerals = DECIMAL_TO_NUMERALS[place]
      to_roman_digit_helper(digit, numerals[0], numerals[1], numerals[2]) 
    end
  end

  def to_roman_digit_helper(digit, ones_numeral, fives_numeral, tens_numeral)
    case digit
    when 1..3 then ones_numeral * digit
    when 4 then ones_numeral + fives_numeral
    when 5..8 then fives_numeral + (ones_numeral * (digit - 5))
    when 9 then ones_numeral + tens_numeral
    end
  end

  private

  attr_reader :decimal
end
=end

class RomanNumeral
  attr_accessor :decimal

  ROMAN_NUMERALS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  def initialize(decimal)
    @decimal = decimal
  end

  def to_roman
    remaining = decimal

    ROMAN_NUMERALS.each_with_object('') do |(roman_numeral, value), result|
      while value <= remaining
        result << roman_numeral
        remaining -= value
      end
    end
  end
end