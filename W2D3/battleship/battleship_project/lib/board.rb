# class Board
#     attr_reader :size

#     def self.print_grid(grid)
#         grid.each do |row|
#             puts row.join(" ")
#         end
#     end

#     def initialize(n)
#         @grid = Array.new(n) {Array.new(n, :N)}
#         @size = n * n
#     end

#     def [](position)
#         row, col = position
#         @grid[row][col]
#     end

#     def []=(position, val)
#         row, col = position
#         @grid[row][col] = val
#     end

#     def num_ships
#         @grid.flatten.count{|ele|ele == :S}
#     end

#     def attack(position)
#         row, col = position
#         if self[position] == :S 
#             self[position] = :H
#             p "you sunk my battleship!"
#             return true
#         else
#             self[position] = :X 
#             return false
#         end
#     end

#     def place_random_ships
#         total_ships = @size * 0.25
#         while self.num_ships < total_ships
#             rand_row = rand(0...@grid.length)
#             rand_col = rand(0...@grid.length)
#             pos = [rand_row, rand_col]
#             self[pos] = :S 
#         end
#     end

#     def hidden_ships_grid
#         @grid.map do |row|
#             row.map do |ele|
#                 if ele == :S 
#                     :N 
#                 else
#                     ele
#                 end
#             end
#         end
#     end

#     def cheat
#         Board.print_grid(@grid)
#     end

#     def print
#         hidden_grid = self.hidden_ships_grid
#         Board.print_grid(hidden_grid)
#     end





    
# end

# class Board

#     attr_reader :size

#     def initialize(n)
#         @grid = Array.new(n) {Array.new(n, :N)}
#         @size = n * n
#     end

#     def [](pos)
#         row, col = pos
#         @grid[row][col]
#     end

#     def []=(pos, val)
#         row, col = pos
#         @grid[row][col] = val
#     end

#     def num_ships
#         return @grid.flatten.count(:S)
#     end

#     #PART2

#     def attack(pos)
#         if self[pos] == :S
#             self[pos] = :H
#             p "you sunk my battleship!"
#             return true
#         else
#             self[pos] = :X
#             return false
#         end
#     end

#     def place_random_ships
#         total_ships = @size * 0.25
#         while self.num_ships < total_ships
#             rand_row = rand(0...@grid.length)
#             rand_col = rand(0...@grid.length)
#             pos = [rand_row, rand_col]
#             self[pos] = :S
#         end
#     end

#     def hidden_ships_grid
#         return @grid.map do |row|
#             row.map do |ele|
#                 if ele == :S 
#                     :N 
#                 else
#                     ele
#                 end
#             end
#         end
#     end

#     def Board.print_grid(grid)
#         grid.each do |row|
#             puts row.join(" ")
#         end
#     end

#     def cheat
#         Board.print_grid(@grid)
#     end

#     def print
#         Board.print_grid(self.hidden_ships_grid)
#     end




 









# end

# class Board

#     attr_reader :size

#     def Board.print_grid(grid)
#         grid.each do |row|
#             puts row.join(" ")
#         end
#     end

#     def initialize(n)
#         @grid = Array.new(n) {Array.new(n, :N)}
#         @size = n * n
#     end

#     def []pos
#         row, col = pos
#         @grid[row][col]
#     end

#     def []=(pos, val)
#         row, col = pos
#         @grid[row][col] = val
#     end

#     def num_ships
#         @grid.flatten.count(:S)
#     end

#     #PART 2

#     def attack(pos)
#         if self[pos] == :S 
#             self[pos] = :H
#             p 'you sunk my battleship!'
#             return true
#         else
#             self[pos] = :X
#             return false
#         end
#     end

#     def place_random_ships
#         while self.num_ships < self.size * 0.25
#             rand_row = rand(0...@grid.length)
#             rand_col = rand(0...@grid.length)
#             pos = [rand_row, rand_col]
#             self[pos] = :S 
#         end
#     end

#     def hidden_ships_grid
#         @grid.map do |row|
#             row.map do |ele|
#                 if ele == :S 
#                     :N 
#                 else
#                     ele
#                 end
#             end
#         end
#     end

#     def cheat
#         Board.print_grid(@grid)
#     end

#     def print
#         Board.print_grid(self.hidden_ships_grid)
#     end











# end



class Board


    def initialize(n)
        @grid = Array.new(n) {Array.new(n, :N)}
        @size = n * n
    end

    def size
        @size
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def num_ships
        @grid.flatten.count(:S)
    end

    def attack(pos)
        if self[pos] == :S
            self[pos] = :H 
            p "you sunk my battleship!"
            return true
        else
            self[pos] = :X 
            return false
        end
    end

    def place_random_ships
        while self.num_ships < self.size * 0.25
            rand_row = rand(0...@grid.length)
            rand_col = rand(0...@grid.length)
            pos = [rand_row, rand_col]
            self[pos] = :S
        end
    end

    def hidden_ships_grid
        @grid.map do |row|
            row.map do |ele|
                if ele == :S 
                    :N 
                else
                    ele
                end
            end
        end
    end

    def Board.print_grid(grid)
        grid.each do |row|
            puts row.join(" ")
        end
    end

    def cheat
        Board.print_grid(@grid)
    end

    def print
        Board.print_grid(self.hidden_ships_grid)
    end














end