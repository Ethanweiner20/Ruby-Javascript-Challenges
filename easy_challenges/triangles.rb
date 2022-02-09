# Triangles

class Triangle
  def initialize(side1, side2, side3)
    lengths = [side1, side2, side3]
    raise ArgumentError, 'Invalid Side Lengths' unless valid_lengths?(lengths)
    @sides = lengths
  end

  def kind
    if equilateral?
      'equilateral'
    elsif isosceles?
      'isosceles'
    else
      'scalene'
    end
  end

  private

  def valid_lengths?(lengths)
    lengths.all?(&:positive?) && triangle?(lengths)
  end

  def triangle?(lengths)
    sorted_lengths = lengths.sort
    sorted_lengths[0] + sorted_lengths[1] > sorted_lengths[2]
  end

  def equilateral?
    (sides[0] == sides[1]) && (sides[1] == sides[2]) # Transitive
  end

  def isosceles?
    (sides[0] == sides[1]) || (sides[1] == sides[2]) || (sides[0] == sides[2])
  end

  attr_reader :sides
end