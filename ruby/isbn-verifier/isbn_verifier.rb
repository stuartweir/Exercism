# frozen_string_literal: true

class IsbnVerifier
  ISBN_CHARS = "0123456789xX\-".freeze

  def self.valid?(str)
    return false unless valid_characters?(str)
    result = str_to_chars(str)
      .map.with_index(1) { |char, index| char[/[xX]/] ? 10 * index : char.to_i * index }
      .reduce(&:+)
    result % 11 == 0 ? true : false
  end

  private

  def self.valid_characters?(str)
    /^[0-9\-]*[xX]*$/.match(str) && str.count('0123456789xX') == 10
  end

  def self.str_to_chars(str)
    str.reverse.gsub('-', '').chars
  end
end
