require_relative "piece.rb"

class Board
  def initialize
    @grid = Array.new(8) { Array.new(8)}
    @null_piece = NullPiece.new
    #populate with nullpieces? or populate with nils?

  end

  def move_piece(start_pos, end_pos)
    raise "no piece at start_pos" if @grid[start_pos] == nil
    rescue InvalidMoveError => e
      puts e.message
      retry
    end
  end

  def[](pos)
    row, col = *pos
    @grid[row][col]
  end

  def[]=(pos, value)
    row, col = *pos
    @grid[row][col] = value
  end
end