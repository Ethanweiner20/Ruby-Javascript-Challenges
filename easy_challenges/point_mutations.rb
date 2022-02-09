# Point Mutations

class DNA
  attr_reader :dna

  def initialize(dna)
    @dna = dna
  end

  def hamming_distance(strand)
    index = 0
    differences = 0

    while dna[index] && strand[index]
      differences += 1 unless dna[index] == strand[index]
      index += 1
    end

    differences
  end
end

# Alternate Solution: Determine the shorter stand's length; iterate that # of
# times