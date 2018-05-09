# YOUR TESTS GO IN HERE!
require "minitest/autorun"
require "minitest/pride"
require "./lib/translator"

class TranslatorTest < Minitest::Test
  def test_instance_of
    translator = Translator.new
    
    assert_instance_of Translator, translator
  end

  
end