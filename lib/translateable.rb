module Translateable
  ENGLISH_TO_BRAILLE = {
    "a" => ["0.", "..", ".."],
    "b" => ["0.", "0.", ".."],
    "c" => ["00", "..", ".."],
    "d" => ["00", ".0", ".."],
    "e" => ["0.", ".0", ".."],
    "f" => ["00", "0.", ".."],
    "g" => ["00", "00", ".."],
    "h" => ["0.", "00", ".."],
    "i" => [".0", "0.", ".."],
    "j" => [".0", "00", ".."],
    "k" => ["0.", "..", "0."],
    "l" => ["0.", "0.", "0."],
    "m" => ["00", "..", "0."],
    "n" => ["00", ".0", "0."],
    "o" => ["0.", ".0", "0."],
    "p" => ["00", "0.", "0."],
    "q" => [".0", "00", "00"],
    "r" => ["0.", "00", "0."],
    "s" => [".0", "0.", "0."],
    "t" => [".0", "00", "0."],
    "u" => ["0.", "..", "00"],
    "v" => ["0.", "0.", "00"],
    "w" => [".0", "00", ".0"],
    "x" => ["00", "..", "00"],
    "y" => ["00", ".0", "00"],
    "z" => ["0.", ".0", "00"],
    " " => ["..", "..", ".."]
  }.freeze 

  def self.translate_to_braille(english_string)
    braille_chars = [[],[],[]]
   
    english_string.split("").each do |char|
      braille_char = Translateable::ENGLISH_TO_BRAILLE[char]
      braille_chars[0] << braille_char[0] 
      braille_chars[1] << braille_char[1] 
      braille_chars[2] << braille_char[2]
    end
    braille_chars.map do |row| 
      row.join("") 
    end.join("\n") 
  end

  def self.translate_to_english(braille_string)
    braille_lines = braille_string.split("\n")
    if braille_lines.size > 3
      consolidated_lines = ["", "", ""]
      i = 0
      while i < braille_lines.size
        consolidated_lines[0] << braille_lines[i]
        consolidated_lines[1] << braille_lines[i + 1]
        consolidated_lines[2] << braille_lines[i + 2]
        i += 3
      end
      braille_lines = consolidated_lines
    end
    
    row1 = braille_lines[0]
    row2 = braille_lines[1]
    row3 = braille_lines[2]
    english_chars = []
    i = 0
    while i < row1.size do
      key = ["#{row1[i]}" + "#{row1[i+1]}", "#{row2[i]}" + "#{row2[i+1]}", "#{row3[i]}" + "#{row3[i+1]}"]
      english_chars << ENGLISH_TO_BRAILLE.invert[key]
      i += 2
    end
    english_chars.join("")
  end
end
   
