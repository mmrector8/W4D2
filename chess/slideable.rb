
module Slideable
    def horizontal_dirs
        [[1,0],[0,1],[-1,0],[0,-1]]
    end

    def diagonal_dirs
        [[-1,1],[1,-1],[1,1],[-1,-1]]
    end

    def moves
        result = []
        move_dirs.each do |(dx,dy)|
            result.concat(grow_unblocked_moves_in_dir(dx,dy))
        end
        result
    end

    private

    def move_dirs
        raise 'create specific move for piece'
    end

    def grow_unblocked_moves_in_dir(dx,dy)
            #go to a square that is not blocked
            #go to a square that is in the board
            result = []
            new_pos = [pos[0] + dx, pos[1] + dy] 
            while Board.empty?(new_pos) && Board.valid?(new_pos)
                #if occupied by enemy or self
                result << new_pos
                dx += 1
                dy += 1
            end
            result

    end
end

# #Knigh
# class Knight
#     def initialize(color)
#         @color = color
#     end
    
#     def to_s
#         color == :black ? "black_piece" : "white_piece"
#     end

#     def moves_dir
#         [
#             []
#         ]
#     end
# end