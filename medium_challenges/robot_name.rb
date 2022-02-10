# Robot Name

class Robot
  @@names = []

  def initialize
    @name = nil
  end

  def name
    return @name if @name
    @name = generate_name while @@names.include?(@name) || @name.nil?
    @@names << @name
    @name
  end

  def generate_name
    "#{letter}#{letter}#{digit}#{digit}#{digit}"
  end

  def reset
    @@names.delete(name)
    @name = nil
  end

  private

  def letter
    ('A'..'Z').to_a.sample
  end

  def digit
    (0..9).to_a.sample
  end
end