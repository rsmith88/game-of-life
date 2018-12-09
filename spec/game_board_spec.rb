require 'game_board'

describe GameBoard do
  subject = GameBoard.new(5, 5)
  subject.create

  describe '#initialize' do
    it 'takes a number of rows and columns to construct game' do
      expect(subject.row).to eq(5)
      expect(subject.column).to eq(5)
    end

    it 'creates an empty array of cells' do
      expect(subject.cells).to be_a(Array)
    end

  end

  describe '#create' do
    it 'creates a game with rows and columns of cells' do
      expect(subject.cells.length).to eq (25)
    end
  end

  describe '#create_neighbours' do
    it 'should return an array with 3 cells for the first cell' do
      cell = subject.cells.first
      expect(subject.create_neighbours(cell).length).to eq(3)
    end

    it 'should return an array with 8 cells for middle cells' do
      cell = subject.cells[12]
      print cell.row
      print cell.column
      expect(subject.create_neighbours(cell).length).to eq(8)
    end

    it 'should return an array with 5 cells for the bottom cells' do
      cell = subject.cells[23]
      expect(subject.create_neighbours(cell).length).to eq(5)
    end
  end

  describe '#neighbours?' do
    it 'returns true when given a neighbouring cell' do
      cell = subject.cells[23]
      cell2 = subject.cells[24]
      expect(subject.neighbours?(cell, cell2)).to eq (true)
    end

    it 'returns false when given a neighbouring cell' do
      cell = subject.cells[12]
      cell2 = subject.cells[24]
      expect(subject.neighbours?(cell, cell2)).to eq (false)
    end
  end

end
