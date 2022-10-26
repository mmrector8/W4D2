require_relative "slideable"

class Rook < Piece
    include Slideable 
    
    def to_s
       self.color == :white ? "♜" : "♖"
    end

    private
    
    def move_dirs
        [
            [0,1],
            [0,-1],
            [1,0],
            [-1,0]
        ]
    end

end