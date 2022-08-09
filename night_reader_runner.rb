require './lib/night_reader'

night_reader = NightReader.new(ARGV[0], ARGV[1])
night_reader.write_to_output_file 
puts "Created '#{night_reader.write_file}' containing #{night_reader.read_file_char_count} characters"