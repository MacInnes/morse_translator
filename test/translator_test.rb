# YOUR TESTS GO IN HERE!
require "minitest/autorun"
require "minitest/pride"
require "./lib/translator"

class TranslatorTest < Minitest::Test
  
  def test_instance_of
    translator = Translator.new
    
    assert_instance_of Translator, translator
  end

  def test_translate_lowercase_letters
    translator = Translator.new

    assert_equal ".-", translator.translate("a")
    assert_equal "--..", translator.translate("z")
    assert_equal "-....--..", translator.translate("bad")
    refute_equal ".-", translator.translate("z")
  end

end