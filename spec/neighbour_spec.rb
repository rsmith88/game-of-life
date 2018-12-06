require 'neighbour'

describe Neighbour do
  subject = Neighbour.new(2, 3)

  describe '#initialize' do
    it 'takes a row number and column number as arguments' do
      expect(subject.row).to eq(2)
      expect(subject.column).to eq(3)
    end
  end

  describe '#hash' do
    it 'includes hash of neighbouring cells' do
      expect(subject.hash).to be_a(Hash)
    end

    it 'includes the row and columns of neighbouring cells when given a cell' do
      expect(subject.hash.first).to eq([1, 4])
    end

  end

end
