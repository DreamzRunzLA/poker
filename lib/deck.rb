require_relative('card')

class Deck
    VALS = ['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"]
    SUITS = ['HEARTS','SPADES','CLUBS','DIAMONDS']

    attr_reader :cards

    def initialize()
        @cards = []
        VALS.each do |val|
            SUITS.each do |suit|
                self.deck << Card.new(val, suit)
            end
        end
    end

    def show_deck()
        self.deck.each do |card|
            card.display_card
        end
    end

end