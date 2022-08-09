require './lib/night_writer'

RSpec.describe NightWriter do 
  before :each do 
    @night_writer = NightWriter.new(ARGV[0], ARGV[1])
  end

  describe 'iteration 1' do 

    it 'exists' do 
      expect(@night_writer).to be_a(NightWriter)
    end

    it 'has has attributes' do 
      expect(@night_writer.read_file).to eq(ARGV[0])
      expect(@night_writer.write_file).to eq(ARGV[1])
    end

    xit 'dfdsf' do 
      expect(@night_writer.input_file_character_count).to eq("3")
    end

    it 'can count the number of characters in the read_file' do 
      expect(@night_writer.read_file_char_count)
    end

  end

end