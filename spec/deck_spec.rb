require 'rspec'
require 'deck'

describe 'Deck' do
  subject(:deck) { Deck.new }
  describe '#initialize' do

    it "populates with 52 cards" do
      expect(deck.instance_variable_get(:@cards).count).to eq(52)
    end

    it "contains 52 unique cards" do
      expect(deck.instance_variable_get(:@cards).uniq.count).to eq(52)
    end

  end

  describe '#draw' do


    it "removes a card from the top" do
      deck.draw
      expect(deck.instance_variable_get(:@cards).count).to eq(51)
    end

    it "gives the card to the player" do
      top_card = deck.instance_variable_get(:@cards).last
      expect(deck.draw).to eq(top_card)
    end

  end

end
