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
  end
end