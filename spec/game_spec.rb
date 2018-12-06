require 'game'

describe Game do
  subject = Game.new(5, 6)

  describe '#initialize' do
    it 'takes a number of rows and columns to construct game' do
      expect(subject.row).to eq(5)
      expect(subject.column).to eq(6)
    end
  end

end
