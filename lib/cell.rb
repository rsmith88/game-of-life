class Cell
  def initialize(row, column)
    @live = true
    @survive = true
    @row = row
    @column = column
    @neighbours = []
  end

  attr_reader :live, :survive, :row, :column, :neighbours
  attr_writer :live, :survive, :neighbours

end
