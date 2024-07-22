puts "Enter your sentences and then press enter"
sentence = gets.chomp
puts "Enter a number to shift the sentence by"
shift = gets.chomp

def caesar_cipher(sentence,shift)
  sentence = sentence.chars
  sentence_changed=sentence.map{|letter| letter.ord}
  shift= shift.to_i
  new_sentence = []
  new_shift = 0
  new_single_letter = 0
  sentence_changed.each do |single_letter|

    if single_letter.between?(65,90) || single_letter.between?(97,122)
      new_single_letter = single_letter + shift

      if new_single_letter.between?(65,90)  || new_single_letter.between?(97,122)
        new_sentence.push(new_single_letter) 

      elsif (new_single_letter > 90 && new_single_letter < 122) 
          new_shift = new_single_letter - 90
          new_single_letter = 64 + new_shift
          new_sentence.push(new_single_letter) 
      elsif (new_single_letter > 122)
          new_shift = new_single_letter - 122
          new_single_letter = 96 + new_shift
          new_sentence.push(new_single_letter) 
      end
    else
      new_sentence.push(single_letter)     
    end
  end
  new_sentence = new_sentence.map{|letter| letter.chr}
  new_sentence = new_sentence.join
  p new_sentence
end


caesar_cipher(sentence,shift)