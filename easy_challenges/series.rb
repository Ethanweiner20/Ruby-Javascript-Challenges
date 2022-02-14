# Series

class Series
  attr_reader :digits_string

  def initialize(string)
    @digits_string = string
  end

  # Simpler Solution
  def slices(length)
    raise ArgumentError if length > digits_string.length
    digits = digits_string.chars.map(&:to_i).each_cons(length).to_a
  end

  def slices_v2(length)
    raise ArgumentError if length > digits_string.length
    digits = digits_string.chars.map(&:to_i)
    length.upto(digits.length).with_object([]) do |end_index, series|
      series << digits[end_index - length...end_index]  
    end
  end
end