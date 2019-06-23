
require 'pry'

class PigLatinizer

  def piglatinize(word)
    if
      # word.split("")[0].match(/^[aeiou]/) ||
      word.split("")[0].match(/^[aeiouAEIOU]/)
      word << "way"
    else
      !word.split("")[0].match(/[aeiouAEIOU]/)
       first_consonants = word.match(/\b([^aeiouAEIOU]{1,})/)
       the_rest = word.gsub(/#{first_consonants}/, "")
       new_word = "#{the_rest}#{first_consonants}ay"
    end
  end

  def piglatinize_string(sentence)
    words = sentence.split("  ")
    words.collect do |w| w.piglatinize
    end
  end

end

# when word.slice(0,1) != /a,e,i,o,u/
  # if the word starts with a consonant, take the letters up to the vowel
  # and add them to the back of the word and then add "ay" after that.
  # word.chars
  # binding.pry

# word.slice[0] <<"ay"
# word.gsub(/^([a-z]+)-(\w+)/, '\2(\1)')
# word << "ay"

  #   if words.match(/a,e,i,o,u/)
  #     # words.slice!(0)
  #     words.join("way")
      # words.gsub(/^([a-z]+)-(\w+)/, '\2(\1)')
  #     # puts "#{{words[0]}way}"
  #   #    # If it starts with a consonant, move the consonant to the end of the word and add "ay"
  #   else
  #     words.join("ay")
  #     # puts "#{{words[0]}ay}"
  #   end
  # # If it starts with a vowel, add "way" to the end of the word

#   # words.piglatinize
