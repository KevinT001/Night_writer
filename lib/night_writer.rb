require './lib/translateable'
class NightWriter
  attr_reader :read_file,
              :write_file

  def initialize(read_file, write_file)
    @read_file = read_file
    @write_file = write_file
  end

    
  def read_file_char_count
    read_file_text.length
  end


    
  def write_to_output_file #method that will take message.txt content and send it to "braille.txt"
#iteration 2 --- first bullet point
      new_file = File.open(write_file, "w")
      new_file.write(translate_to_braille)
      new_file.close
  end
 
  def translate_to_braille
    Translateable::translate_to_braille(read_file_text)
  end

  private
  def read_file_text  
    File.read(@read_file)
  end
end

if ARGV.size == 2
  night_writer = NightWriter.new(ARGV[0], ARGV[1])
  night_writer.write_to_output_file 
  puts "Created '#{night_writer.write_file}' containing #{night_writer.read_file_char_count} characters"
end



#ARGV - search google version for Ruby X
#night_writer class will take in message.txt with message X
#Also takes in brail txt file/ X
#read message.txt message X

#take the message and translate
    #Create another class('translator') that does translation/ has hash of alphabet to braille. 
    #
#write translated message to braille txt
#puts out "Created 'braille.txt' containing 256 characters"

#
#misc
#look up how to write files ruby 