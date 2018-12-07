class Game
  def initialize(row, column)
    @row = row
    @column = column
    @cells = []
    @survive = true
  end

  attr_reader :row, :column, :cells

  def create
    @row.times do |row_number|
      @column.times do |column_number|
        cell = Cell.new(row_number, column_number)
        @cells.push(cell)
      end
    end
  end

  def tick
    @cells.each do |cell|
      cell.survive=(false)
    end
    print_game
    reset
  end

  def print_game
    counter = 0
    @cells.each do |cell|
      (cell.survive) ? (print "X") : (print "O")
      counter += 1
      puts "" if (counter % 5 == 0)
    end
  end

  def reset
    @cells.each do |cell|
      cell.live = !!(cell.survive)
    end
  end

end
