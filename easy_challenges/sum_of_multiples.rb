class SumOfMultiples
  attr_reader :factors, :upper_bound

  def self.to(upper_bound)
    new(3, 5).to(upper_bound)
  end

  def initialize(*factors)
    @factors = factors
    @upper_bound = upper_bound
  end

  def to(upper_bound)
    @upper_bound = upper_bound
    factors.map { |factor| multiples(factor) }.flatten.uniq.sum
  end

  private

  def multiples(factor)
    multiple = factor
    multiples = []

    while multiple < upper_bound
      multiples << multiple
      multiple += factor
    end

    multiples
  end
end