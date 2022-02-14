# Perfect Number

class PerfectNumber
  def self.classify(number)
    raise unless natural?(number)

    case divisors(number).sum <=> number
    when -1 then "deficient"
    when 0 then "perfect"
    when 1 then "abundant"
    end
  end

  private

  def self.natural?(number)
    number.instance_of?(Integer) && number.positive?
  end

  def self.divisors(number)
    (2..Math.sqrt(number).ceil).each_with_object([1]) do |candidate, divisors|
      if number % candidate == 0
        divisors << number / candidate
        divisors << candidate
      end
    end
  end
end