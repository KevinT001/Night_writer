require './spec/spec_helper'
require './lib/translateable.rb'

RSpec.describe Translateable do 

  describe "translate_to_braille" do 
    it "translates a single english line to braille" do 
      english_text = "hello word"
      expected = "0.0.0.0.0....00.0.00\n00.00.0..0..00.000.0\n....0.0.0....00.0..."
      expect(Translateable::translate_to_braille(english_text)).to eq(expected)
    end
  end
  describe "translate_to_english" do
    it "translates single line of braille" do
      braille_text = "0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0..."

      expect(Translateable::translate_to_english(braille_text)).to eq("hello world")
    end
  end

    
end