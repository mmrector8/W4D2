require_relative "Piece"


class King < Piece
   
    def to_s
       self.color == :white ? "♚" : "♔"
    end

    private
    
    def move_dirs
        [
            [0,1],
            [1,1],
            [1,0],
            [0,-1],
            [1,-1],
            [-1,1],
            [-1,-1],
            [-1,0]
        ]
    end



end