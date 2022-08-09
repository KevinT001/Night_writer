require './spec/spec_helper'
require './lib/night_writer'

RSpec.describe NightWriter do 
  before :each do 
    @read_file = "nw_read_file_dummy"
    @write_file = "nw_write_file_dummy"
    @night_writer = NightWriter.new(@read_file, @write_file)
  end

  describe 'File I/O setup' do 

    it 'exists' do 
      expect(@night_writer).to be_a(NightWriter)
    end

    it 'has has attributes' do 
      expect(@night_writer.read_file).to eq(@read_file)
      expect(@night_writer.write_file).to eq(@write_file)
    end

    it 'can count the number of characters in the read_file' do 
      expect(@night_writer.read_file_char_count).to eq(11)
    end
  end

  describe 'English to braille' do 
    
    it 'can write to an output file' do
      @night_writer.write_to_output_file
      expect(File.read("./braille.txt")).to eq( "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
    end
  end
end