require 'game'

describe Game do
  subject = Game.new(5, 5)
  subject.game_board.create

  describe '#initialize' do
    it 'takes a number of rows and columns to construct game' do
      expect(subject.row).to eq(5)
      expect(subject.column).to eq(5)
    end

    it 'should create a new gameboard' do
      expect(subject.game_board).to be_a(GameBoard)
    end
  end

  describe '#survive?' do
    it 'returns false if a cell has more than 3 live neighbours' do
      subject.reset
      expect(subject.game_board.cells[0].live).to eq(subject.game_board.cells[0].survive)
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
      expect(subject.game_board.cells[0].live).to eq(subject.game_board.cells[0].survive)
    end
  end

end
