require 'board'

  describe Board do

    it { is_expected.to respond_to :table }
   
    describe '#place' do
    let(:out_of_bounds_ship) { Ship.new("A1", 3, "N") } # need to use a Double
    let(:ship) { Ship.new("A1", 1, "N") }

    it 'raises an error if outside of board constraint' do
      expect { subject.place out_of_bounds_ship }.to raise_error 'Out of bounds'
    end

    it 'raises an error if ship overlaps' do
      subject.place ship
      expect { subject.place ship }.to raise_error 'occupied'
    end
  end
end