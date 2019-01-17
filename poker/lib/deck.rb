require_relative "card"

class Deck
attr_reader :pile 

  def initialize
    @pile = make_deck
  end 

  def make_deck
    arr = []
    Card::SUITS.each do |suit,v|
      Card::VALUES.each do |value,x|
        arr << Card.new(v, x)
      end 
    end

    arr
  end

  def shuffle
    @pile.shuffle!
  end 

  def deal
    @pile.pop
  end 
end 