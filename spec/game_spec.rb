require 'game'

describe Game do
  subject = Game.new(5, 5)
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

  # describe '#tick' do
  #   it 'updates all cells in the game' do
  #     subject.tick
  #     expect(subject.cells[0].live).to eq (false)
  #   end
  # end

  describe '#reset' do
    it 'updates all cells in the game' do
      subject.reset
      expect(subject.cells[0].live).to eq(subject.cells[0].survive)
    end
  end

  describe '#create_neighbours' do
    it 'should return an array with 8 cells' do
      cell = subject.cells.first
      expect(subject.create_neighbours(cell).length).to eq(3)
    end
  end

end
