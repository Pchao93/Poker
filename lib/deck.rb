class Deck

  def initialize
    @cards = []
    populate
    shuffle!
  end

  def draw
    @cards.pop
  end

  private

  def populate
    Card::VALUES.each_key do |value|
      Card::SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
  end

  def shuffle!
    @cards = @cards.shuffle
  end

end
