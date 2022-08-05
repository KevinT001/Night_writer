class NightWriter

  def initialize

    @read_file = ARGV[0]
    @write_file = ARGV[1]
    require'pry';binding.pry
  end
end
NightWriter.new

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