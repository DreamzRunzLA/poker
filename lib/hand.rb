# The logic of calculating pair, three-of-a-kind, two-pair, etc. goes here.
# Logic of which hand beats which would go here.

class Hand
    attr_reader :hand

    def initialize(hand = [])
        @hand = hand
    end

    def hand_discard(pos)
        if pos.is_a?(Integer) != true
            raise ArgumentError.new("invalid position, try again")
        else
            @hand.delete_at(pos)
            p "Remaining cards in hand:"
            return self.show_hand
        end
    end

    def hand_concat(arr)
        @hand.concat(arr)
        if @hand.length != 5
            raise ArgumentError.new("too many/too few cards")
        else
            return
        end
    end

    def show_hand
        @hand.each do |card|
            p card.to_s + ", Position: " + @hand.index(card).to_s
        end
    end

end