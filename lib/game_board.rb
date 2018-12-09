class GameBoard
  def initialize(row, column)
    @row = row
    @column = column
    @cells = []
  end

  attr_reader :row, :column, :cells

  def create
    create_cells
    @cells.each do |cell|
      create_neighbours(cell)
    end
  end

  def create_cells
    @row.times do |row_number|
      @column.times do |column_number|
        cell = Cell.new(row_number, column_number)
        @cells.push(cell)
      end
    end
  end

  def create_neighbours(cell)
    @neighbours = []
    @cells.each do |test_cell|
      @neighbours.push(test_cell) if neighbours?(cell, test_cell)
    end
    cell.neighbours=@neighbours
  end

  def neighbours?(cell, test_cell)
    !!((test_cell.row == cell.row - 1) && (test_cell.column == cell.column - 1)) ||
    ((test_cell.row == cell.row - 1) && (test_cell.column == cell.column)) ||
    ((test_cell.row == cell.row - 1) && (test_cell.column == cell.column + 1)) ||
    ((test_cell.row == cell.row) && (test_cell.column == cell.column - 1)) ||
    ((test_cell.row == cell.row) && (test_cell.column == cell.column + 1)) ||
    ((test_cell.row == cell.row + 1) && (test_cell.column == cell.column - 1)) ||
    ((test_cell.row == cell.row + 1) && (test_cell.column == cell.column)) ||
    ((test_cell.row == cell.row + 1) && (test_cell.column == cell.column + 1))
  end

end
