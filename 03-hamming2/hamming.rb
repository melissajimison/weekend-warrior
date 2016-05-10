class Hamming

  def self.compute(entry1, entry2)
    if entry1.length != entry2.length
      raise ArgumentError.new("Both entries have to have same number of characters")
    end

    pairs = entry1.chars.zip entry2.chars
    pairs.select { |pair| pair[0] != pair[1]}.length

  end
end
