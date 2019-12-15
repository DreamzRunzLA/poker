require('rspec')
require('card')

describe Card do
    subject { Card.new("10", "Hearts") }
    let(:card1) {Card.new('2', 'diamonds')}
    let(:card2) {Card.new('k', 'diamonds')}
    let(:card3) {Card.new('a', 'clubs')}
    
    it "flags inappropriate value" do
        expect { Card.new("12", "Hearts") }.to raise_error(ArgumentError)
    end

    it "flags inappropriate suit" do
        expect { Card.new("10", "zblack") }.to raise_error(ArgumentError)
    end

    it "allows proper val/suit to pass through" do
        expect { Card.new("q", "SPADES") }.not_to raise_error(ArgumentError)
    end

    it "returns correct value" do
        expect(subject.val).to eq("10")
    end

    it "returns correct suit" do
        expect(subject.suit).to eq("HEARTS")
    end

    it "displays the card properly" do
        expect(subject.to_s).to eq("10 of HEARTS")
    end

    it "displays the ordinal properly" do
        expect(subject.ordinal).to eq(10)
    end

    it "compares strength of cards" do
        expect(card1<=>card2).to eq(-1)
    end

    it "compares strength of cards" do
        expect(card2<=>card3).to eq(-1)
    end

    it "compares strength of cards" do
        expect(card2<=>card1).to eq(1)
    end
end