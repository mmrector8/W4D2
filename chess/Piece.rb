
require_relative "board"

class Piece 
    def initialize(color,board, pos)
        @color = color
        @board = Board.new
        @pos = pos
        # @piece = piece 
    end
end