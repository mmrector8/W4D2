 
class Piece 
    attr_reader :color, :board, :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        board.add_piece(self, pos)
    end

    def moves
        p " You need to implement this method in subclass"
    end

    def to_s
        color == :black ? "♘" :"♞"
    end

    def Symbol
    end

    def check
        self.positions.each do |pos|
        #need to change this  
            if @board[pos].value == "King" #&& opponents King
                return true
            end
            false
        end
    end

    
end