# The logic of calculating pair, three-of-a-kind, two-pair, etc. goes here.
# Logic of which hand beats which would go here.

require('rspec')
require('hand')
require('card')

describe Hand do
    subject { Hand.new([double("Card",:value=>2,:suit=>:H, :ordinal=>2),
    double("Card",:value=>3,:suit=>:H,:ordinal=>3),double("Card",:value=>4,:suit=>:H,:ordinal=>4),
    double("Card",:value=>5,:suit=>:H,:ordinal=>5),double("Card",:value=>6,:suit=>:H,:ordinal=>6)]) }

    let(:hand1) { double("Hand",:hand => [double("Card",:value=>2,:suit=>:H, :ordinal=>2),
    double("Card",:value=>3,:suit=>:H,:ordinal=>3),double("Card",:value=>4,:suit=>:H,:ordinal=>4),
    double("Card",:value=>5,:suit=>:H,:ordinal=>5),double("Card",:value=>6,:suit=>:H,:ordinal=>6)]) }

    let(:realhand) { Hand.new(
        [ Card.new('2', 'diamonds'),
        Card.new('K', 'hearts'),
        Card.new('Q', 'clubs'),
        Card.new('J', 'hearts'),
        Card.new('10', 'spades')]
        ) 
    }

    it "discard methods throws away correct amount" do 
        expect(subject.hand.length).to eq(5)
        subject.hand_discard(0)
        expect(subject.hand.length).to eq(4)
    end

    it "discard method throws away correct cards"
    
    it "ranks a potential hand correctly"

    it "identifies a potential hand correctly"

    it "has a working concat method"
    
    it "identifies the high card in the absence of a ranked hand"

    # it "shows hand correctly" do
    #     expect {realhand.show_hand}.to output('2 of DIAMONDS, Position: 0').to_stdout
    # end
end