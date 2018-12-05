require 'cell.rb'

describe Cell do
  describe '#initialize' do
    it 'initializes a cell with live variable being true' do
      expect(subject.live).to eq(true)
    end
  end
end
