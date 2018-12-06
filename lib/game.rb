class Game
  def initialize(row, column)
    @row = row
    @column = column
    @cells = []
  end

  attr_reader :row, :column, :cells

  def create
    @row.times do |row_number|
      @column.times do |column_number|
        cell = Cell.new(row_number, column_number)
        @cells.push(cell)
        print "X"
      end
      puts ""
    end
  end

end
