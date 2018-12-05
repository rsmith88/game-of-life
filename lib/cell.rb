class Cell
  def initialize(row, column)
    @live = true
    @row = row
    @column = column
  end

  attr_reader :live, :row, :column

end
