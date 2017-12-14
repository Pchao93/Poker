require 'rspec'
require 'hand'

describe "Hand" do
  let(:ace) { double("Card", value: 14, suit: :hearts) }
  let(:king) { double("Card", value: 13, suit: :hearts) }
  let(:queen) { double("Card", value: 12, suit: :hearts) }
  let(:jack) { double("Card", value: 11, suit: :hearts) }
  let(:ten) { double("Card", value: 10, suit: :hearts) }



  let(:deck) { double("Deck", cards: [ace, king, queen, jack, ten]) }

  let(:player) { double("Player", name: "zion")}
  subject(:hand) { Hand.new(deck, player) }


  describe "#initialize" do

    it "has a deck" do
      expect(hand.instance_variable_get(:@deck)).to_not be_nil
    end

    it "has a player" do
      expect(hand.player).to_not be_nil
    end

    it "starts out empty" do
      expect(hand.cards).to be_empty
    end

  end

  describe "#add" do
    before(:each) { allow(deck).to receive(:draw).and_return(ace) }
    it "adds a card to the hand" do
      hand.add
      expect(hand.cards.count).to equal(1)
    end

    it "calls the deck's draw method" do
      expect(deck).to receive(:draw).once
      hand.add
    end


    it "does not add more than 5 cards" do
      5.times { hand.add }
      expect { hand.add }.to raise_error ("too many cards")
    end

  end

  describe "#discard" do
    before(:each) {
      allow(deck).to receive(:draw).and_return(ace)
      5.times { hand.add }


    }
    it "removes a card from the hand" do
      old_card = hand.cards.first
      expect(hand.discard(0)).to eq(old_card)
      expect(hand.cards.count).to eq(4)
    end

    it "does not allow removal of more than 3 cards" do
      hand.discard(0)
      hand.discard(0)
      hand.discard(0)
      expect { hand.discard(0) }.to raise_error ("too few cards")
    end

  end

  describe "#hand_value" do

    it "correctly calculates the value of the hand's combination of cards"

    it "does not try to calculate with a hand of less than 5 cards"

    it "correctly chooses the highest valued hand if multiple are available"

  end

  describe "#<=>" do

    it "correctly compares when the first hand is smaller"

    it "correctly compares when the first hand is larger"

    it "correctly compares when both hands are equal"

  end

end
