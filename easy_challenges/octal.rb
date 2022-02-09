# Octal

class Octal
  attr_reader :octal
  
  def initialize(octal)
    @octal = octal
  end

  def to_decimal
    return 0 unless valid?
    octal_digits = octal.chars.reverse.map(&:to_i)
    decimal = 0

    octal_digits.each_with_index do |digit, place|
      decimal += digit * 8**place
    end

    decimal
  end

  def valid?
    octal.match(/\A[0-7]+\z/)
  end
end