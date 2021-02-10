module Slideable
    HORIZONTAL_DIRS = []
    DIAGONAL_DIRS = []

    def horizontal_dirs

    end

    def diagonal_dirs
        
    end

    private
    def move_dirs

    end

    def grow_unblocked_moves_in_dir(dx, dy)
        
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
        "That move was invalid, try again."
    end
end

class Piece
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

    def Symbol

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

    # def Symbol #why capatilized
    #     ''
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