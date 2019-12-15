class Card
    attr_reader :val, :suit, :ordinal

    VALS = ['2','3','4','5','6','7','8','9','10',"J", "Q", "K", "A"]
    ORDINAL = {'2'=>2,'3'=>3,'4'=>4,'5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9,'10'=>10,"J"=>11, "Q"=>12, "K"=>13, "A"=>14}
    SUITS = ['HEARTS','SPADES','CLUBS','DIAMONDS']

    def initialize(val, suit)
        @val = val.upcase
        @suit = suit.upcase
        self.confirm_card()
        @ordinal = ORDINAL[@val]
    end

    def confirm_card
        if VALS.include?(self.val) == false
            raise ArgumentError.new("invalid value")
        elsif SUITS.include?(self.suit) == false
            raise ArgumentError.new("invalid suit")
        else
            return
        end
    end

    def to_s
        return "#{self.val} of #{self.suit}"
    end

    def <=>(other)
        return self.ordinal <=> other.ordinal
    end

end