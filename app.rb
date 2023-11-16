require './modules/exit_app'
require './modules/on_start'
require './modules/english_to_pig_latin'
require './modules/pig_latin_to_english'

class App
  include OnStart
  include EnglishToPigLatin
  include PigLatinToEnglish
  include ExitApp
end
