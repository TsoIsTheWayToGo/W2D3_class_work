class Card 
  attr_reader :suit, :value 

  SUITS = {heart: "H", 
          diamond: "D",
            spade: "S",
             club: "C"
                      }
    VALUES = {two: 2,
              three: 3,
              four: 4,
              five: 5,
              six: 6,
              seven: 7,
              eight: 8,
              nine: 9,
              ten: 10,
              jack: 11,
              queen: 12,
              king: 13,
              ace: 14
                      }

  def initialize(suit,value)
     raise "Invalid suit or value" unless SUITS.values.include?(suit) && VALUES.values.include?(value)
    @suit = suit 
    @value = value
  end
  
  # def value
  #   VALUES[]
  # end 

end