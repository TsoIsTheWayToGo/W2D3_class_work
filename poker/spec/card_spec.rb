require "rspec"
require "card"

RSpec.describe "Card" do
  let (:card) {Card.new("H", 2)}
  describe "#initialize" do
    it "Initializes with a suit and value" do
    expect(card.suit && card.value).to_not be nil
    end
    it "it only accepts correct suit and values" do
      expect {Card.new("Andy","AA")}.to raise_error
    end  
  end
  describe "#value" do
    it "returns the value of the card" do 
      expect(card.value).to eq(2)
    end
  end 
end