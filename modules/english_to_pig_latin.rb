require_relative '../translator'

module EnglishToPigLatin
  def english_to_pig_latin
    print 'Please input the word(s): '
    words = gets.chomp

    if words.empty?
      puts 'No input provided. Please choose option again and enter one word atleast.'
    else
      translator_instance = Translator.new
      pig_latin_result = translator_instance.pig_latin_translation(words)

      puts "Pig Latin Translation: #{pig_latin_result}"
    end
  end
end
