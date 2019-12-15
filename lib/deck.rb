require_relative './card'
require_relative './hand'

class Deck
    VALS = ['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"]
    ORDINAL = {'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9,'10'=>10,"J"=>11, "Q"=>12, "K"=>13, "A"=>14}
    SUITS = ['HEARTS','SPADES','CLUBS','DIAMONDS']

    attr_reader :cards

    def initialize(cards = [])
        @cards = cards
        if @cards.length == 0
            VALS.each do |val|
                SUITS.each do |suit|
                    self.cards << Card.new(val, suit)
                end
            end
        end
    end

    def show_deck()
        self.cards.each do |card|
            card.display_card
        end
    end

    def shuffle()
        @cards = @cards.shuffle
    end

    def simple_deck()
        simple = []
        @cards.each do |card|
            simple << [card.val, card.suit]
        end
        return simple
    end

    def draw()
        @cards.shift
    end

end