class Card
    attr_reader :num, :suit

    def initialize(num, suit)
        @num = num
        @suit = suit
        self.confirm_card()
    end

    def confirm_card()
        
    end

end