class Complement
  def self.of_dna(protein)
    raise ArgumentError.new("Not a Valid protein") unless protein.scan(/[^CGTA]/).empty?
    protein.gsub(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')
  end

  def self.of_rna(protein)
    raise ArgumentError.new("Not a Valid protein") if protein.match(/[^GCUA]/) != nil
    protein.gsub(/[GCUA]/, 'G' => 'C', 'C' => 'G', 'U' => 'A', 'A' => 'T')

  end

end
