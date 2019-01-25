# frozen_string_literal: true

class Hexadecimal
  HEX_CHAR_MAPPING = {
    'A' => 10,
    'B' => 11,
    'C' => 12,
    'D' => 13,
    'E' => 14,
    'F' => 15
  }.freeze

  private

  attr_reader :hex_string, :hex_chars

  public

  def initialize(hex_str)
    @hex_string = hex_str.upcase
    @hex_chars = format_hex_string
  end

  def to_decimal
    return 0 unless valid_hex?
    hex_power_mapping.inject(0) { |sum, (num, power)| sum += num * (16 ** power) }
  end

  private

  def valid_hex?
    /^[0-9A-F]*$/.match(hex_string) ? true : false
  end

  def format_hex_string
    hex_string.reverse.chars
  end

  def hex_power_mapping
    hex_chars.map.with_index { |c, index| HEX_CHAR_MAPPING[c] ? [HEX_CHAR_MAPPING[c], index] : [c.to_i, index] }
  end
end
