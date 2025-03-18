class Cipher
  def initialize(sentence, shift)
    @sentence = sentence
    @shift = shift
  end

  def transform_sentence(result = "")
    @sentence.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      result << character_shift(char, base)
    end
    result
  end

  def character_shift(char, base)
    char_num = char.ord
    if char_num.between?(65, 90) || char_num.between?(97, 122)
      (((char_num - base) + @shift) % 26) + base
    else
      char
    end
  end
end
