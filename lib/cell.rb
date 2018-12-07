class Cell
  def initialize(row, column)
    @live = true
    @row = row
    @column = column
    @survive = true
  end

  attr_reader :live, :row, :column, :live, :survive

  attr_writer :live, :survive

end
