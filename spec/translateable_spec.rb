require './spec/spec_helper'
require './lib/translateable.rb'

RSpec.describe Translateable do 

  describe 'verify alphabet hash' do 

    it 'can verify a character in alphabet translate hash' do

    expect(Translateable::ENGLISH_TO_BRAILLE).to include({"f" => ["00", "0.", ".."],})
    end
  end 

  describe 'translate_to_braille' do 

    it 'can translates a single english line to braille' do 
      english_text = "hello word"
      expected = "0.0.0.0.0....00.0.00\n00.00.0..0..00.000.0\n....0.0.0....00.0..."
      expect(Translateable::translate_to_braille(english_text)).to eq(expected)
    end
  end

  describe 'translate_to_english' do

    it 'can translates single line of braille' do
      braille_text = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."

      expect(Translateable::translate_to_english(braille_text)).to eq("hello world")
    end

    it 'can translate multiple lines of braille' do 
      braille_text = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."
      
      expect(Translateable::translate_to_english(braille_text)).to eq("hello worldhello world")
    end
  end
end