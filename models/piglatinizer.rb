
require 'pry'

class PigLatinizer

  def piglatinize(string)
    # single_word = !string.strip.include? " "
    # sentence = string.strip.include? " "
    #is the word a single word or a sentence?
    #if a single word, do if statement below
    if single_word
      string.split("")[0].match(/^[aeiouAEIOU]/)
      string << "way"
    elsif !word.split("")[0].match(/[aeiouAEIOU]/)
       first_consonants = string.match(/\b([^aeiouAEIOU]{1,})/)
       the_rest = string.gsub(/#{first_consonants}/, "")
       new_word = string"#{the_rest}#{first_consonants}ay"
    end
    piglatinize_sentence(single_word)
    end
  end
#
#
#   def piglatinize_sentence(sentence)
#     binding.pry
#    sentence.split.map do |word|
#      piglatinize(word)
#      if
#        word.split(" ")[0].match(/^[aeiouAEIOU]/)
#        word << "way"
#      elsif
#        !word.split(" ")[0].match(/[aeiouAEIOU]/)
#         first_consonants = word.match(/\b([^aeiouAEIOU]{1,})/)
#         the_rest = word.gsub(/#{first_consonants}/, "")
#         new_word = "#{the_rest}#{first_consonants}ay"
#   end.join(" ")
#
# end

end
