require_relative "slideable"
class Queen < Piece
    include Slideable 
    
    def to_s
       self.color == :white ? "♛" : "♛"
    end

    private
    
    def move_dirs
      horizontal_dirs + diagonal_dirs
    end

end