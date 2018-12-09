class Game
  def initialize(row, column)
    @game_board = GameBoard.new(row, column)
    @row = row
    @column = column
  end

  attr_reader :row, :column, :game_board

  def tick
    @game_board.cells.each do |cell|
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
    @game_board.cells.each do |cell|
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
