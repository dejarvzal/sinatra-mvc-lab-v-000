

class PigLatinizer

  def piglatinize(words)

    if words.match(/a,e,i,o,u/)
      # words.slice!(0)
      words.join(way)
      # words.gsub(/^([a-z]+)-(\w+)/, '\2(\1)')
      # puts "#{{words[0]}way}"
    #    # If it starts with a consonant, move the consonant to the end of the word and add "ay"
    else
      words.join("ay")
      # puts "#{{words[0]}ay}"
    end
  # If it starts with a vowel, add "way" to the end of the word
  end
  # words.piglatinize

end
