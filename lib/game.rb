class Game
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

  def tick
    @cells.each do |cell|
      cell.survive=(survive?(cell))
    end
    print_game
    reset
  end

  def survive?(cell)
    counter = 0
    cell_neighbours = cell.neighbours
    cell_neighbours.each do |cell|
      counter += 1 if cell.live
    end
    return false if counter > 3
  end

  def reset
    @cells.each do |cell|
      cell.live = !!(cell.survive)
    end
  end

  def print_game
    counter = 0
    @cells.each do |cell|
      (cell.survive) ? (print "X") : (print "O")
      counter += 1
      puts "" if (counter % @row == 0)
    end
  end

end
