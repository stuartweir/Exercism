class Complement
  TRANSCRIPTION_MAPPING = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(rna_transcription)
    return unless rna_transcription.match(/^[CGAT]*$/i)
    rna_transcription
      .upcase
      .chars
      .map { |nucleotide| TRANSCRIPTION_MAPPING[nucleotide] }
      .join
  end
end
