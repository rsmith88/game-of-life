require 'cell.rb'

describe Cell do
  subject = Cell.new(1, 3)

  describe '#initialize' do
    it 'initializes a cell with live variable being true' do
      expect(subject.live).to eq(true)
    end

    it 'initializes a cell with a row number (location)' do
      expect(subject.row).to eq(1)
    end

    it 'initializes a cell with a column number (location)' do
      expect(subject.column).to eq(3)
    end

    it 'initializes a cell with next turn live as true' do
      expect(subject.survive).to eq(true)
    end

  end
end
