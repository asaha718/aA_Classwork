require_relative "piece.rb"

class Board
  def initialize
    @null_piece = NullPiece.instance
    @grid = Array.new(8) { Array.new(8, @null_piece)}


    piece = Piece.new(:black, self, [3,4])
    self[[3,4]] = piece
    
    #NOTE: REFACTOR SO THAT ALL POSITIONS AFTER SELF ARE WITHIN BRACKETS
    # #black pieces
    # self[0,0] = Rook.new(:black, self,   [0,0]) #TODO: make colors into symbols
    # self[0,1] = Knight.new(:black, self, [0,1])
    # self[0,2] = Bishop.new(:black, self, [0,2])
    # self[0,3] = Queen.new(:black, self,  [0,3])
    # self[0,4] = King.new(:black, self,   [0,4])
    # self[0,5] = Bishop.new(:black, self, [0,5])
    # self[0,6] = Knight.new(:black, self, [0,6])
    # self[0,7] = Rook.new(:black, self,   [0,7])
    # self[1,0] = Pawn.new(:black, self, [1,0])
    # self[1,1] = Pawn.new(:black, self, [1,1])
    # self[1,2] = Pawn.new(:black, self, [1,2])
    # self[1,3] = Pawn.new(:black, self, [1,3])
    # self[1,4] = Pawn.new(:black, self, [1,4])
    # self[1,5] = Pawn.new(:black, self, [1,5])
    # self[1,6] = Pawn.new(:black, self, [1,6])
    # self[1,7] = Pawn.new(:black, self, [1,7])

    # #white pieces
    # self[7,0] = Rook.new(:white, self,   [7,0])
    # self[7,1] = Knight.new(:white, self, [7,1])
    # self[7,2] = Bishop.new(:white, self, [7,2])
    # self[7,3] = Queen.new(:white, self,  [7,3])
    # self[7,4] = King.new(:white, self,   [7,4])
    # self[7,5] = Bishop.new(:white, self, [7,5])
    # self[7,6] = Knight.new(:white, self, [7,6])
    # self[7,7] = Rook.new(:white, self,   [7,7])
    # self[6,0] = Pawn.new(:white, self, [6,0])
    # self[6,1] = Pawn.new(:white, self, [6,1])
    # self[6,2] = Pawn.new(:white, self, [6,2])
    # self[6,3] = Pawn.new(:white, self, [6,3])
    # self[6,4] = Pawn.new(:white, self, [6,4])
    # self[6,5] = Pawn.new(:white, self, [6,5])
    # self[6,6] = Pawn.new(:white, self, [6,6])
    # self[6,7] = Pawn.new(:white, self, [6,7])


  end

  def check_start(start_pos)
    if start_pos[0] < 0 
      raise OutOfBoundsError 
    elsif start_pos[0] > 7
      raise OutOfBoundsError 
    elsif start_pos[1] < 0
      raise OutOfBoundsError 
    elsif start_pos[1] > 7
      raise OutOfBoundsError 
    end
  end

  def check_end(end_pos)
    if end_pos[0] < 0 
      raise OutOfBoundsError
    elsif end_pos[0] > 7
      raise OutOfBoundsError
    elsif end_pos[1] < 0
      raise OutOfBoundsError
    elsif end_pos[1] > 7
      raise OutOfBoundsError
    end
  end

  def move_piece(start_pos, end_pos)
    begin
    #check start position validity - refactor later into diff method
    check_start(start_pos)

    #check end position validity - refactor later into diff method
    check_end(end_pos)

    if !self[end_pos].is_a?(NullPiece) #refactor later to not throw error when capturing opposite color piece
      raise InvalidMoveError 
    end
    
    raise "no piece at start_pos" if self[start_pos].is_a?(NullPiece)

    rescue InvalidMoveError => e
      puts e.message
    end

    self[end_pos] = self[start_pos] 
    self[start_pos] = @null_piece
  end

  # def capture_piece(start_pos, end_pos) #handles taking pieces of opposite color
  #   if @grid[end_pos].is_a?(Piece) #and it's the opposite color
  #     #piece is taken
  #   end
  # end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
  end
end


# ---------- TESTS ---------------
board = Board.new
start = [3,4]
last = [3,6]
p board[start] #should be a piece

p board[start].is_a?(Piece) #true
p board[last].is_a?(Piece) #true because NullPiece counts as a piece
p board[last].is_a?(NullPiece) #true

puts

board.move_piece(start, last) 
puts "moving piece ...."
p board[last].is_a?(Piece) #true
p board[start].is_a?(NullPiece) #true

i1 =            [15, 3]
i2 =            [3, 15]
i3 =            [-2, 0]
i4 =            [0, -2]

# out of bounds error
#board.move_piece(i1, start) #should error

#no piece at start error




