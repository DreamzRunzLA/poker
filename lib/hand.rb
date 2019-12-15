# The logic of calculating pair, three-of-a-kind, two-pair, etc. goes here.
# Logic of which hand beats which would go here.

class Hand
    def initialize(hand = [])
        @hand = hand
    end

    def create_hand(arr)
        if @hand.length == 2
            raise ArgumentError.new('hand is full')
        elsif arr.length != 2
            raise ArgumentError.new('can only draw 2 cards')
        else
            @hand.concat(arr)
        end
    end

end