class Hand

  attr_reader :player, :cards

  def initialize(deck, player)
    @deck = deck
    @player = player
    @cards = []
  end

  def add
    if @cards.count < 5
      @cards.push(@deck.draw)
    else
      raise "too many cards"
    end
  end

  def discard(card_idx)
    if @cards.length > 2
      @cards.delete_at(card_idx)
    else
      raise "too few cards"
    end
  end

  

  def hand_value

  end

  def <=>(hand)

  end

end




# Royal Flush value_array.sort == [10, 11, 12, 13, 14] && @cards.all? { |card| card.suit == @cards[0].suit }
# Straight Flush value_array.max - value_array.min == 4 && value_array.uniq.count == 5 && @cards.all? { |card| card.suit == @cards[0].suit }
# Four of a kind, Full house (counter keys length == 2, but all values less than 4), Three of a kind (counters keys length == 3), two pair (keys length == 3, none > 2), (keys length == 4) pair counter = Hash.new(0) value_array.each do |card_value| counter[card_value] += 1
#Flush @cards.all? { |card| card.suit == @cards[0].suit }
# strait value_array.max - value_array.min == 4 && value_array.uniq.count == 5

# HANDS = [:royal_flush, :straight_flush, :four_of_a_kind, :full_house, :flush, :straight, :three_of_a_kind, :two_pair, :pair, :high_card]
# in the game @hands.sort_by { |hand| Hands::HANDS.index(hand)}
