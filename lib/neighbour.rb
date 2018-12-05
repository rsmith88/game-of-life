class Neighbour
  def initialize(row, column)
    @row = row
    @column = column
  end

  attr_reader :row, :column

  def hash
    neighbours = {
      (row - 1) => (column - 1)
      (row - 1) => (column)
      (row - 1) => (column + 1)
      (row) => (column - 1)
      (row) => (column + 1)
      (row + 1) => (column - 1)
      (row + 1) => (column)
      (row + 1) => (column + 1)
    }
  end

end
