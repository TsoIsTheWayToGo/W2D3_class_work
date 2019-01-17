require "rspec"
require "deck"

RSpec.describe "Deck" do
  subject(:deck) {Deck.new}
  describe "#initialize" do 
    it "generates 52 cards" do
      expect(deck.pile.count).to be(52)
    end
    it "generates 52 unique cards" do 
      expect(deck.pile.uniq.count).to eq(deck.pile.count)
    end
  end
  describe "#shuffle" do
    it "shuffles the deck" do
    shuffled_deck = deck.pile.shuffle 
    expect(shuffled_deck).to_not eq(deck.pile)
    end
  end

  describe "#deal" do 
    it "takes a card from the top of the deck" do
      expect(deck.pile.last).to eq(deck.deal)
    end
  end
end