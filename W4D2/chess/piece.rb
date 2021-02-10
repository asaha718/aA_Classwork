module Slideable

    HORIZONTAL_DIRS = [
        [-1,0], # up
        [1, 0], 
        [0, 1], 
        [0,-1]
    ]
    DIAGONAL_DIRS = [
        [1,1], 
        [-1,-1], 
        [1,-1], 
        [-1,1]
    ]

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    private
    def move_dirs
        #will swap the null piece for a char piece
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        #will return end position 
        start_pos= self.pos
        last_pos= [start_pos[0]+dx, start[1]+dy]
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
    attr_reader :color, :pos

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
    def initialize(color, board, pos)
        super
    end

end

class Bishop < Piece
    def initialize(color, board, pos)
        super
    end
end

class Queen < Piece
    def initialize(color, board, pos)
        super
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