require 'game'

describe Game do
  subject = Game.new(5, 5)

  describe '#initialize' do
    it 'takes a number of rows and columns to construct game' do
      expect(subject.row).to eq(5)
      expect(subject.column).to eq(5)
    end
  end

  describe '#create' do
    it 'creates a game with rows and columns of cells' do
      subject.create
      expect(subject.cells.length).to eq (25)
    end
  end

  describe '#tick' do
    it 'updates all cells in the game' do
      subject.create
      subject.tick
      expect(subject.cells[0].live).to eq (false)
    end
  end

end
