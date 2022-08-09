require './lib/translateable'

class NightReader
attr_reader :read_file,
            :write_file

  def initialize(read_file, write_file)

    @read_file = read_file
    @write_file = write_file
  end

  def read_file_char_count
    read_file_text.length
  end

  def write_to_output_file
      new_file = File.open(write_file, "w")
      new_file.write(translate_to_english)
      new_file.close
  end
 
  def translate_to_english
    Translateable::translate_to_english(read_file_text)
  end

  private
  def read_file_text  
    File.read(@read_file)
  end
end

night_reader = NightReader.new(ARGV[0], ARGV[1])
night_reader.write_to_output_file 
puts "Created '#{night_reader.write_file}' containing #{night_reader.read_file_char_count} characters"

