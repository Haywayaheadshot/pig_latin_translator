require './translator'

describe Translator do
  context 'check for correct outputs when prompted' do
    it 'check for the output of hello' do
        words = 'hello'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('ellohay')
    end

    it 'check for the output of eat' do
        words = 'eat'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('eatway')
    end

    it 'check for the output of yellow' do
        words = 'yellow'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('yellowway')
    end

    it 'check for the output of `eat world`' do
        words = 'eat world'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('eatway orldway')
    end

    it 'check for the output of Hello' do
        words = 'Hello'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('Ellohay')
    end

    it 'check for the output of Apples' do
        words = 'Apples'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('Applesway')
    end

    it 'check for the output of `eat… world?!`' do
        words = 'eat… world?!'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('eatway… orldway?!')
    end

    it 'check for the output of `school`' do
        words = 'school'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('oolschay')
    end

    it 'check for the output of `quick`' do
        words = 'quick'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('ickquay')
    end

    it "check for the output of `she's great!`" do
        words = "she's great!"
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql("e'sshay eatgray!")
    end

    it "check for the output of HELLO" do
        words = 'HELLO'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('ELLOHAY')
    end

    it "check for the output of `Hello There`" do
        words = 'Hello There'
        translator_instance = Translator.new
        pig_latin_result = translator_instance.pig_latin_translation(words)
      expect(pig_latin_result).to eql('Ellohay Erethay')
    end

    it "check for the output of a word that is just consonants" do
      words = 'brr'
      translator_instance = Translator.new
      pig_latin_result = translator_instance.pig_latin_translation(words)
    expect(pig_latin_result).to eql('brray')
  end
  end
end