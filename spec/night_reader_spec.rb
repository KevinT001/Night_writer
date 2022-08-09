require './spec/spec_helper'
require './lib/night_reader'

RSpec.describe NightReader do 
  before :each do 
    @read_file = "nw_read_file_dummy"
    @write_file = "nw_write_file_dummy"
    @night_reader = NightReader.new(@read_file, @write_file)
  end

  it 'exists' do 
    expect(@night_reader).to be_a(NightReader)
  end

  it 'has has attributes' do 
    expect(@night_reader.read_file).to eq(@read_file)
    expect(@night_reader.write_file).to eq(@write_file)
  end

  it 'can count the number of characters in the read_file' do 
    expect(@night_reader.read_file_char_count).to eq(11)
  end
end 