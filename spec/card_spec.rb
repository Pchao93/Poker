require 'rspec'
require 'card'

describe "Card" do
  subject(:card) { Card.new("A", :hearts) }
  describe "#initialize" do

    it "has a value" do
      expect(card.value).to_not be_nil
    end

    it "has a suit" do
      expect(card.suit).to_not be_nil
    end
  end

  describe "#to_s" do

    it "prints card value"

    it "prints card suit"
  end

end
