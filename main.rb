require_relative "lib/cesar_cipher"

puts "Enter your sentences and then press enter"
sentence = gets.chomp
puts "Enter a number to shift the sentence by"
shift = gets.chomp.to_i

cipher = Cipher.new(sentence, shift)
puts cipher.transform_sentence
