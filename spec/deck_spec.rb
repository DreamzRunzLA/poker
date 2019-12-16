require('rspec')
require('deck')

#Check that there are 52 cards
#Check that there are the right number of suits and numbers
#Check that shuffle method works correctly
#Check that you can draw a card

describe Deck do
    subject { Deck.new() }
    let(:minideck) {Deck.new([double("Card", :val=>'2', :suit=>'HEARTS'),
    double("Card", :val=>'K', :suit=>'DIAMONDS'), double("Card", :val=>'10', :suit=>'CLUBS') ])}

    it "initializes as a Deck" do
        expect(subject).to be_a(Deck)
    end

    it "is an array" do
        expect(subject.cards.is_a?(Array)).to eq(true)
    end
    
    it "has 52 cards" do
        expect(subject.cards.length).to eq(52)
    end

    it "has the correct composition of hearts" do
        heart_cards = subject.cards.select { |card| card.suit == 'HEARTS'}
        expect(heart_cards.length).to eq(13)
    end

    it "has the correct composition of spades" do
        spade_cards = subject.cards.select { |card| card.suit == 'SPADES'}
        expect(spade_cards.length).to eq(13)
    end

    it "has the correct composition of diamonds" do
        diamond_cards = subject.cards.select { |card| card.suit == 'DIAMONDS'}
        expect(diamond_cards.length).to eq(13)
    end

    it "has the correct composition of clubs" do
        club_cards = subject.cards.select { |card| card.suit == 'CLUBS'}
        expect(club_cards.length).to eq(13)
    end

    it "has the correct composition of hearts" do
        heart_cards = subject.cards.select { |card| card.suit == 'HEARTS'}
        heart_cards = heart_cards.map { |card| card = card.val }
        expect(heart_cards).to eq(['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"])
    end

    it "has the correct composition of spades" do
        spade_cards = subject.cards.select { |card| card.suit == 'SPADES'}
        spade_cards = spade_cards.map { |card| card = card.val }
        expect(spade_cards).to eq(['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"])
    end

    it "has the correct composition of clubs" do
        club_cards = subject.cards.select { |card| card.suit == 'CLUBS'}
        club_cards = club_cards.map { |card| card = card.val }
        expect(club_cards).to eq(['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"])
    end

    it "has the correct composition of diamonds" do
        diamond_cards = subject.cards.select { |card| card.suit == 'DIAMONDS'}
        diamond_cards = diamond_cards.map { |card| card = card.val }
        expect(diamond_cards).to eq(['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"])
    end

    it "has a properly working shuffle method" do 
        before_shuffle = subject.simple_deck
        subject.shuffle
        after_shuffle = subject.simple_deck
        expect(before_shuffle == after_shuffle).to eq(false)
    end

    it "has a properly working shuffle method" do 
        before_shuffle = subject.simple_deck
        after_shuffle = subject.simple_deck
        expect(before_shuffle == after_shuffle).to eq(true)
    end

    it "removes one card after using draw method" do
        expect(subject.cards.length).to eq(52)
        subject.draw
        expect(subject.cards.length).to eq(51)
    end

    let(:test_cards) do
        [ double("card", :suit => :spades, :value => :king),
        double("card", :suit => :spades, :value => :queen),
        double("card", :suit => :spades, :value => :jack) ]
    end

    it "can take cards as an argument" do
        test_deck = Deck.new(test_cards)
        expect(test_deck.cards.length).to eq(3)
    end

    it "can handle mini decks" do 
        expect(minideck.cards.length).to eq(3)
    end

end