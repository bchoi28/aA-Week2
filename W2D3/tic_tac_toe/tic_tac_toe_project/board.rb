class Board
    
    def initialize
        @grid = Array.new(3) {Array.new(3, '_')}
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def valid?(pos)
        row, col = pos
        pos.all? do |i|
            i >= 0 && i < @grid.length
        end
    end

    def empty?(pos)
        self[pos] == '_'
    end

    def place_mark(pos, mark)
        if !self.valid?(pos)
            raise 'position is not valid'
        elsif !self.empty?(pos)
            raise 'position is empty'
        end
        self[pos] = mark
    end

    def print
        @grid.each do |row|
            puts row.join(" ")
        end
    end

    def win_row?(mark)
        @grid.any?{|row|row.all?(mark)}
    end

    def win_col?(mark)

        (0...@grid.length).each do |idx|
            arr = []
            @grid.each do |row|
                arr << row[idx]
            end
            if arr.all?(mark) && arr.length == @grid.length
                return true
            end
        end
        false

    end

    def win_diagonal?(mark)
        left_to_right = (0...@grid.length).all? do |idx|
            pos = [idx, idx]
            self[pos] == mark
        end

        right_to_left = (0...@grid.length).all? do |idx|
            row = idx
            col = @grid.length - 1 - idx
            pos = [row, col]
            self[pos] == mark
        end

        left_to_right || right_to_left
    end

    def win?(mark)
        win_col?(mark) || win_diagonal?(mark) || win_row?(mark)
    end

    def empty_positions?
        # @grid.flatten.any?("_")

        indices = (0...@grid.length).to_a
        positions = indices.product(indices)
        positions.any?{|pos|self.empty?(pos)}
    end








end