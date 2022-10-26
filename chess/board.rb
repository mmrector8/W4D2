require_relative "./Piece.rb"

class Board 
    attr_reader :grid
    def initialize
        @grid = Array.new(8) {Array.new(8)}
        @nullpiece = NullPiece.new
        #top row
        @grid[0][0] = Piece.new("Rook")
        @grid[0][1] = Piece.new("Knight")
        @grid[0][2] = Piece.new("Bishop")
        @grid[0][3] = Piece.new("Queen")
        @grid[0][4] = Piece.new("King")
        @grid[0][5] = Piece.new("Bishop")
        @grid[0][6] = Piece.new("Knight")
        @grid[0][7] = Piece.new("Rook")
        #bottom row
        @grid[7][0] = Piece.new("Rook")
        @grid[7][1] = Piece.new("Knight")
        @grid[7][2] = Piece.new("Bishop")
        @grid[7][3] = Piece.new("Queen")
        @grid[7][4] = Piece.new("King")
        @grid[7][5] = Piece.new("Bishop")
        @grid[7][6] = Piece.new("Knight")
        @grid[7][7] = Piece.new("Rook")
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
    
    def move_piece(start_pos, end_pos)
        raise "there is no piece at the position" if empty?(start_pos)
        raise "not a valid move" if !valid?(end_pos)

       current_piece = self[start_pos]
       self[end_pos] = current_piece
       self[start_pos] = nil

    end


end
