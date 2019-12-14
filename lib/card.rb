class Card
    attr_reader :val, :suit

    VALS = ['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"]
    SUITS = ['HEARTS','SPADES','CLUBS','DIAMONDS']

    def initialize(val, suit)
        @val = val.upcase
        @suit = suit.upcase
        self.confirm_card()
    end

    def confirm_card()
        if VALS.include?(self.val) == false
            raise ArgumentError.new("invalid value")
        elsif SUITS.include?(self.suit) == false
            raise ArgumentError.new("invalid suit")
        else
            return
        end
    end

    def display_card()
        p "#{self.val} of #{self.suit}"
    end

end