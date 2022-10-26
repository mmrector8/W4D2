require_relative "Piece"


class Knight < Piece
   
    def to_s
       self.color == :white ? "♞" : "♘"
    end

    private
    
    def move_dirs
        [
            [1,2],
            [2,1],
            [-1,2],
            [-2,1],
            [1,-2],
            [2,-1],
            [-1,-2],
            [-2,-1]
        ]
    end



end