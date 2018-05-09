require "pry"

class Translator

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
  end

  def eng_to_morse(input)
    array = input.chars
    translated_array = array.map do |each|
      each = @dictionary[each.downcase]
    end
    return translated_array.join()
  end

  def from_file(filename)
    file = File.new(filename, "r")
    output = []
    while (line = file.gets)
      output << line
    end
    eng_to_morse(output.join)
  end

  def morse_to_eng(input)
    words = input.split("  ")
    letters = words.map { |each| each.split(" ") }
    # binding.pry
    translated_array = letters.map do |word|
      word.map do |letter|
        letter = @dictionary.key(letter)
      end
    end
    # binding.pry
    output = translated_array.map do |word|
      word = word.join
    end
    return output.join(" ")
  end







end