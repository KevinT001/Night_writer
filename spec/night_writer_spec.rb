require './lib/night_writer'

RSpec.describe NightWriter do 
  before :each do 
    @read_file = "nw_read_file_dummy"
    @write_file = "nw_write_file_dummy"
    @night_writer = NightWriter.new(@read_file, @write_file)
  end

  describe 'iteration 1' do 

    it 'exists' do 
      expect(@night_writer).to be_a(NightWriter)
    end

    it 'has has attributes' do 
      expect(@night_writer.read_file).to eq(@read_file)
      expect(@night_writer.write_file).to eq(@write_file)
    end
  end
end