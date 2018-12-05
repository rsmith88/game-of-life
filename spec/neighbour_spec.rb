require 'neighbour'

describe Neighbour do
  subject = Neighbour.new(1, 3)

  describe '#initialize' do
    it 'takes a row number and column number as arguments' do
      expect(subject.row).to eq(1)
      expect(subject.column).to eq(3)
    end
  end

end
