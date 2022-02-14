# Solution 1: Storing as array internally

class CustomSet
  def initialize(elements=[])
    @elements = elements # Note: `@elements` may contain duplicates
  end

  def empty?
    elements.empty?
  end

  def contains?(element)
    elements.include?(element)
  end

  def subset?(other)
    elements.all?(&other.method(:contains?))
  end

  def disjoint?(other)
    elements.none?(&other.method(:contains?))
  end

  def eql?(other)
    subset?(other) && other.subset?(self)
  end

  alias == eql?

  def add(element)
    elements << element; self
  end

  def intersection(other)
    CustomSet.new(elements.select(&other.method(:contains?)))
  end

  def difference(other)
    CustomSet.new(elements.reject(&other.method(:contains?)))
  end

  def union(other)
    CustomSet.new(elements + other.elements)
  end

  protected

  attr_accessor :elements
end
