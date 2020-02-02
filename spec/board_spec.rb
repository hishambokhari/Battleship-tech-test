require 'board'

  describe Board do

    it {is_expected.to respond_to :table}
    
    it 'raises an error if outside of board contsraint' do
      board = Board.new
      ship = Ship.new("A1", 3, "N")
      expect{subject.place ship}.to raise_error 'Out of bounds'
    end
    
    it 'raises an error if ship overlaps' do
      board = Board.new
      ship1 = Ship.new("A1",1,"N")
      board.place ship1
      ship2 = Ship.new("A1",1,"N")
      expect{board.place ship2}.to raise_error 'occupied'
    end
  end