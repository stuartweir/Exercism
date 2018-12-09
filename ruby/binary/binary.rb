class Binary
  def self.to_decimal(binary_str)
    raise ArgumentError unless binary_str.match(/[a-zA-Z2-9]+/).nil?
    total = 0
    binary_str.reverse.chars.each.with_index do |bit, index|
      total += bit.to_f * 2 ** index
    end
    total
  end
end
