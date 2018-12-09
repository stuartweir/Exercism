class Anagram
  def initialize(phrase)
    @phrase = phrase
  end

  def match(arr)
    downcase_phrase = @phrase.downcase
    sorted_phrase = downcase_phrase.chars.sort.join
    arr
      .select do |str|
        str_downcase = str.downcase
        (str_downcase != downcase_phrase) && str_downcase.chars.sort.join == sorted_phrase
      end
  end
end
