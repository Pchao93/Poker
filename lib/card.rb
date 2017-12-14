class Card
  attr_reader :value, :suit

  SUITS = [:clubs, :diamonds, :hearts, :spades].freeze
  VALUES = {2 => '2',
            3 => '3',
            4 => '4',
            5 => '5',
            6 => '6',
            7 => '7',
            8 => '8',
            9 => '9',
            10 => '10',
            11 => 'J',
            12 => 'Q',
            13 => 'K',
            14 => 'A'}.freeze
            
  def initialize(value, suit)
    @value, @suit = value, suit
  end
end
