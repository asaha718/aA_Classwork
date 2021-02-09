

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
        super
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