
require 'pry'

class PigLatinizer

  def piglatinize(string)
    #is the word a single word or a sentence?
    #if a single word, do if statement below
    if string.split("")[0].match(/^[aeiouAEIOU]/)
      string << "way"
    elsif !string.split("")[0].match(/[aeiouAEIOU]/)
       first_consonants = string.match(/\b([^aeiouAEIOU]{1,})/)
       the_rest = string.gsub(/#{first_consonants}/, "")
       new_word = string"#{the_rest}#{first_consonants}ay"
    end
    piglatinize_sentence(string)
    end
  end


  # def piglatinize_sentence(sentence)
  #   # binding.pry
  #  sentence.split.map do |word|
  #    piglatinize(word)
  #    if
  #      word.split(" ")[0].match(/^[aeiouAEIOU]/)
  #      word << "way"
  #    elsif
  #      !word.split(" ")[0].match(/[aeiouAEIOU]/)
  #       first_consonants = word.match(/\b([^aeiouAEIOU]{1,})/)
  #       the_rest = word.gsub(/#{first_consonants}/, "")
  #       new_word = "#{the_rest}#{first_consonants}ay"
  # end.join(" ")

end

end

#
# class PigLatinizer
#
#   # def vowel?(char)
#   #   "aeiouAEIOU".include?(char)
#   # end
#
#
#   # def piglatinize(string)
#   #   words = string.split("  ")#.to_array
#   #   words.collect do |word|
#   #     if vowel?(word[0])
#   #       word += "way"
#   #     else
#   #       until vowel?(word[0]) do
#   #         word = word[1..-1] + word[0]
#   #       end
#   #       word = word + "ay"
#   #     end
#   #   end.join
#   # end
#
#   def piglatinize(word)
#     word = word.split(" ")
#     word.collect do |w|
#       if w.split("")[0].match(/^[aeiouAEIOU]/)
#         w << "way"
#       else !w.split("")[0].match(/[aeiouAEIOU]/)
#             first_consonants = word.match(/\b([^aeiouAEIOU]{1,})/)
#             the_rest = word.gsub(/#{first_consonants}/, "")
#             new_word = "#{the_rest}#{first_consonants}ay"
#       end
#     end
#   end
# #  # def piglatinize_string(sentence)
#   #   words =[]
#   #   words << sentence.split(" ")
#   #   # words << sentence.split("  ")
#   #   binding.pry
#   #   items = words.collect do |w| w.piglatinize
#   #     items.join
#   #   end
#   # end
