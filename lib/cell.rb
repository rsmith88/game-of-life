class Cell
  def initialize(row, column)
    @live = true
    @survive = true
    @row = row
    @column = column
    @neigbours = []
  end

  attr_reader :live, :row, :column, :live, :survive
  attr_writer :live, :survive, :neighbours

end
