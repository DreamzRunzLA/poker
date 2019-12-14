require('rspec')
require('deck')

#Check that there are 52 cards
#Check that there are the right number of suits and numbers
#Check that shuffle method works correctly
#Check that you can draw a card

describe Deck do
    subject { Deck.new() }

    it "is an array" do
        expect(subject.cards.is_a?(Array)).to eq(true)
    end
    
    it "has 52 cards" do
        expect(subject.cards.length).to eq(52)
    end

    it "only contains card classes" do
        sanity_check = subject.all? do { |ele| ele.is_a? Card }
        expect(sanity_check).to eq(true)
    end

    it "has the correct composition of suits"

    it "has the correct composition of numbers"

    it "has a properly working shuffle method"

    it "has a properly working draw methods"

    it "can display its contents"
end