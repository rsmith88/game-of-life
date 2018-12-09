require 'game_board'

describe GameBoard do
  subject = GameBoard.new(5, 5)
  subject.create

  describe '#initialize' do
    it 'takes a number of rows and columns to construct game' do
      expect(subject.row).to eq(5)
      expect(subject.column).to eq(5)
    end
  end

  describe '#create' do
    it 'creates a game with rows and columns of cells' do
      expect(subject.cells.length).to eq (25)
    end
  end

  describe '#create_neighbours' do
    it 'should return an array with 8 cells' do
      cell = subject.cells.first
      expect(subject.create_neighbours(cell).length).to eq(3)
    end
  end

end
