class Translator
  def pig_latin_translation(input)
    words = input.scan(/[\w'-]+|\W+/)

    translated_words = words.map do |word|
      if word =~ /\w/
        if word =~ /^[^aeioyAEIOY]+$/
          preserve_case(word, "#{word.downcase}ay")
        elsif word =~ /^[aeioyAEIOY]/
          preserve_case(word, "#{word.downcase}way")
        else
          first_vowel_index = word =~ /[aeioyAEIOY]/
          preserve_case(word, "#{word[first_vowel_index..]}#{word[0...first_vowel_index]}ay") if first_vowel_index
        end
      else
        word
      end
    end

    translated_words.join
  end


  def preserve_case(original, translated)
    if original == original.upcase
      translated.upcase
    elsif original =~ /^[A-Z]/
      translated.capitalize
    else
      translated
    end
  end
end
