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
  }.freeze #makes it so you can't adjust this hash elsewhere. 

  BRAILLE_TO_ENGLISH = {
    ["0.", "..", ".."] => "a",
    ["0.", "0.", ".."] => "b",
    ["00", "..", ".."] => "c",
    ["00", ".0", ".."] => "d",
    ["0.", ".0", ".."] => "e",
    ["00", "0.", ".."] => "f",
    ["00", "00", ".."] => "g",
    ["0.", "00", ".."] => "h",
    [".0", "0.", ".."] => "i",
    [".0", "00", ".."] => "j",
    ["0.", "..", "0."] => "k",
    ["0.", "0.", "0."] => "l",
    ["00", "..", "0."] => "m",
    ["00", ".0", "0."] => "n",
    ["0.", ".0", "0."] => "o",
    ["00", "0.", "0."] => "p",
    [".0", "00", "00"] => "q",
    ["0.", "00", "0."] => "r",
    [".0", "0.", "0."] => "s",
    [".0", "00", "0."] => "t",
    ["0.", "..", "00"] => "u",
    ["0.", "0.", "00"] => "v",
    [".0", "00", ".0"] => "w",
    ["00", "..", "00"] => "x",
    ["00", ".0", "00"] => "y",
    ["0.", ".0", "00"] => "z",
    ["..", "..", ".."] => " "
  }.freeze

  def self.translate_to_braille(english_string)
    #iterate through each character(which is key) 
    #output each value(braille) 
    braille_chars = [[],[],[]]

    english_string.split("").each do |char|   #splits the string up to each character
      braille_char = Translateable::ENGLISH_TO_BRAILLE[char] #Gives braille characters
      braille_chars[0] << braille_char[0] 
      braille_chars[1] << braille_char[1] 
      braille_chars[2] << braille_char[2]
    end
    braille_chars.map do |row| 
      row.join("") 
    end.join("\n") # creates the 3 rows for each translated character
  end
end
   
