require_relative "./Piece.rb"
require_relative "./Queen.rb"
require_relative "./Bishop.rb"
require_relative "./Rook.rb"
require_relative "./King.rb"
require_relative "./Knight.rb"

class Board 
    attr_reader :grid
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @nullpiece = nil
        #top row
       
    end

    def [](pos)
        row,col = pos
        @grid[row][col]
        # @grid[pos[0]][pos[1]]
    end

    def []=(pos,piece)
        row,col = pos
        @grid[row][col] = piece
    end

    def empty?(pos)
        if self[pos] == nil
        # if self[pos] == nil
            return true
        end
        return false
    end

    def valid?(pos)
        row,col = pos
        if row.between?(0,7) && col.between?(0,7)
             return true
        end
        return false
    end

    def add_piece(piece,pos)
        self[pos] = piece if empty?(pos)
    end
    
    def move_piece(start_pos, end_pos)
        raise "there is no piece at the position" if empty?(start_pos)
        raise "not a valid move" if !valid?(end_pos)
        raise "there is a piece here" if !end_pos.nil?

       current_piece = self[start_pos]
       self[end_pos] = current_piece
       self[start_pos] = nil

    end

    def render   
        @grid[0][0] = Rook.new(:white, self, [0,0])
        @grid[0][1] = Knight.new(:white, self, [0,1])
        @grid[0][2] = Bishop.new(:white, self, [0,2])
        @grid[0][3] = Queen.new(:white, self, [0,3])
        @grid[0][4] = King.new(:white, self, [0,4])
        @grid[0][5] = Bishop.new(:white, self, [0,5])
        @grid[0][6] = Knight.new(:white, self, [0,6])
        @grid[0][7] = Rook.new(:white, self, [0,7])
        # #bottom row
        @grid[7][0] = Rook.new(:black, self, [7,0])
        @grid[7][1] = Knight.new(:black, self, [7,1])
        @grid[7][2] = Bishop.new(:black, self, [7,2])
        @grid[7][3] = Queen.new(:black, self, [7,3])
        @grid[7][4] = King.new(:black, self, [7,4])
        @grid[7][5] = Bishop.new(:black, self, [7,5])
        @grid[7][6] = Knight.new(:black, self, [7,6])
        @grid[7][7] = Rook.new(:black, self, [7,7])
    end

end

# #

# b = Board.new 
# b[[2,2]].moves