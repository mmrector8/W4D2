
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
    require "byebug"
    def grow_unblocked_moves_in_dir(dx,dy)
            #go to a square that is not blocked
            #go to a square that is in the board
            result = []
            new_pos = [pos[0] + dx, pos[1] + dy] 

              if board.empty?(new_pos) && board.valid?(new_pos)
                #if occupied by enemy or self
                result << new_pos
                 new_pos[0] += dx
                 new_pos[1] += dy
              end
            result

    end
end

