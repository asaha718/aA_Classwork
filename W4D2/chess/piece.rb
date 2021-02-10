module Slideable

    HORIZONTAL_DIRS = [
        [-1,0], # up
        [1, 0], # down
        [0, 1], # right
        [0,-1] # left
    ]
    DIAGONAL_DIRS = [
        [1,1], #down-right
        [-1,-1], #up-left
        [1,-1], #down-left
        [-1,1] #up-right
    ]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        possible_moves= []
        possible_dirs= move_dirs
        possible_dirs.each do |dir|
            possible_moves.concat(grow_unblocked_moves_in_dir(dir))
        end
        possible_moves
    end

    private
    def move_dirs
        raise "Implement this per-piece!"
    end

    def grow_unblocked_moves_in_dir(dir) #[1,1]
        start_pos = self.pos
        valid = true
        moves_in_dir = []
        current_pos = start_pos
        while valid
            #increments current position 
            current_pos[0] += dir[0]
            current_pos[1] += dir[1]

            #checks current position for validity
            case current_pos
            when current_pos[0] < 0 || current_pos[1] < 0 #out of bounds of board
                valid = false
            when current_pos[0] > 7 || current_pos[1] > 7 #out of bounds of board
                valid = false
            when self.board[current_pos].color == self.color #your piece blocks it
                valid = false
            else
                #it's valid so far. 
                #if there's another piece:
                    #you input the current_pos as possible
                    #but then set valid to false afterwards (because you can't move afterwards)
                moves_in_dir << current_pos
                if self.board[current_pos].color != self.color && #if it's not your color ...
                !self.board[current_pos].is_a?(NullPiece) && # ... and it's not a null piece ...
                !self.board[current_pos].nil? # and it's not nil ...
                    valid = false  #it must be another player's piece, so you set valid to false!
                end
            end
        end
        moves_in_dir
    end
end

module Stepable
    def moves

    end

    private
    def move_diffs

    end

end

class InvalidMoveError < StandardError
    def message
        "That move was invalid, try again. Use take_piece to take pieces."
    end
end

class InvalidCaptureError < StandardError
    def message
        "That capture was invalid, try again. Use move_piece to move to an unoccupied space."
    end
end

class Piece
    attr_reader :color, :pos, :board

    def initialize(color, board, pos)
        @color= color
        @board = board
        @pos= pos
    end

    def to_s

    end

    def empty?

    end

    def valid_moves
        
    end

    def pos=(val)

    end

    def symbol

    end

    private
    def move_into_check?(end_pos)
        
    end

end


class NullPiece < Piece
include Singleton

    def initialize(color, board, pos)
        color = nil
        board = nil
        pos = nil
    end
    
    def moves

    end

    def symbol

    end

    # def to_s
    #     ''
    # end

    # def empty?
    #     ''
    # end

    # def valid_moves
    #    '' 
    # end

    # def pos=(val)
    #    '' 
    # end

    # private
    # def move_into_check?(end_pos)
    #     ''
    # end
        
end


#Slideable
class Rook < Piece
    include Slideable
    def initialize(color, board, pos)
        super
    end
   
    def move_dirs
        horizontal_dirs
    end

end

class Bishop < Piece
    include Slideable
    def initialize(color, board, pos)
        super
    end

    def move_dirs
        diagonal_dirs
    end
end

class Queen < Piece
    include Slideable
    def initialize(color, board, pos)
        super
    end

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end
end


#Stepable
class Knight < Piece
    def initialize(color, board, pos)
        super
    end
end

class King < Piece
    def initialize(color, board, pos)
        super
    end
end

#Pawn is special
class Pawn < Piece
    def initialize(color, board, pos)
        super
    end
end