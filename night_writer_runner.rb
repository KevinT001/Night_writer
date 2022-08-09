if ARGV.size == 2
  
night_writer = NightWriter.new(ARGV[0], ARGV[1])
night_writer.write_to_output_file 
puts "Created '#{night_writer.write_file}' containing #{night_writer.read_file_char_count} characters"
end 