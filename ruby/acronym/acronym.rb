class Acronym
  def self.abbreviate(phrase)
    return '' unless phrase
    phrase
      .scan(/\b\w/)
      .join
      .upcase
  end
end
