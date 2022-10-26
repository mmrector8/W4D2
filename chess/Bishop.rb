require_relative "Piece"
require_relative "slideable"

class Bishop < Piece
    include Slideable 
    
    def to_s
       self.color == :white ? "♝" : "♗"
    end

    private
    
    def move_dirs
        [
            [1,1],
            [1,-1],
            [-1,1],
            [-1,-1]
        ]
    end



end