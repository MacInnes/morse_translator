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

    assert_equal ".-", translator.eng_to_morse("a")
    assert_equal "--..", translator.eng_to_morse("z")
    assert_equal "-....--..", translator.eng_to_morse("bad")
    refute_equal ".-", translator.eng_to_morse("z")
  end

  def test_translate_any_case_and_numbers
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_translate_from_file
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.from_file("hello_world.txt")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.from_file("three_ships.txt")
  end

  def test_translate_to_morse_from_english
    translator = Translator.new

    assert_equal "hello world", translator.morse_to_eng(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
  end

end