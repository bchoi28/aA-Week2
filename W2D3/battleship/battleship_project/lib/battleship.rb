require_relative "board"
require_relative "player"

# class Battleship
#     attr_reader :board, :player

#     def initialize(n)
#         @player = Player.new
#         @board = Board.new(n)
#         @remaining_misses = @board.size / 2.0
#     end

#     def start_game
#         @board.place_random_ships
#         puts "Number of ships: #{@board.num_ships}"
#         @board.print
#     end

#     def lose?
#         if @remaining_misses <= 0
#             puts "you lose"
#             return true
#         else
#             return false
#         end
#     end

#     def win?
#         if @board.num_ships == 0
#             puts "you win"
#             return true
#         else
#             return false
#         end
#     end

#     def game_over?
#         if self.lose? || self.win?
#             return true
#         else
#             return false
#         end
#     end
        
#     def turn
#         move = @player.get_move
#         if @board.attack(move) == false
#             @remaining_misses -= 1
#         end
#         @board.print
#         puts "Remaining misses: #{@remaining_misses}"
#     end


# end




# class Battleship

#     attr_reader :board, :player

#     def initialize(n)   # n = length of board
#         @player = Player.new
#         @board = Board.new(n)
#         @remaining_misses = @board.size / 2.0
#     end

#     def start_game
#         @board.place_random_ships
#         p @board.num_ships
#         # p "number of ships: #{@board.num_ships}"
#             #string interpolation - not necessary here
#             # but @board.num_ships returns an integer
#             #so we're combining it into a string with
#             #the description preceding it
#          @board.print
#     end

#     def lose?
#         if @remaining_misses <= 0
#             puts "you lose"
#             return true
#         else
#             return false
#         end
#     end

#     def win?
#         if @board.num_ships == 0
#             puts "you win"
#             return true
#         else
#             return false
#         end
#     end

#     def game_over?
#         return self.lose? || self.win?
#         false
#     end

#     def turn
#         pos = @player.get_move # => [2, 5]
#         turn = @board.attack(pos)
#         if turn == false
#             @remaining_misses -= 1
#         end
#         @board.print
#         puts @remaining_misses
#     end

# end



# class Battleship

#     attr_reader :board, :player

#     def initialize(n)
#         @player = Player.new
#         @board = Board.new(n)
#         @remaining_misses = @board.size / 2.0
#     end

#     def start_game
#         @board.place_random_ships
#         p @board.num_ships
#         @board.print
#     end

#     def lose?
#         if @remaining_misses <= 0
#             p "you lose"
#             true
#         else
#             false
#         end
#     end 

#     def win?
#         if @board.num_ships == 0
#             p "you win"
#             true
#         else
#             false
#         end
#     end

#     def game_over?
#         lose? || win?
#     end

#     def turn
#         move = @player.get_move
#         if @board.attack(move) == false
#             @remaining_misses -= 1
#         end
#         @board.print
#         p @remaining_misses
#     end


# end




class Battleship

    attr_reader :board, :player

    def initialize(n)
        @player = Player.new
        @board = Board.new(n)
        @remaining_misses = (n * n) / 2.0   #or @board.size / 2.0
    end

    def start_game
        @board.place_random_ships
        p @board.num_ships
        @board.print
    end

    def lose?
        if @remaining_misses <= 0
            p "you lose"
            return true
        else
            return false
        end
    end

    def win?
        if @board.num_ships == 0
            p "you win"
            return true
        else
            return false
        end
    end

    def game_over?
        win? || lose?
    end

    def turn
        pos = @player.get_move
        if @board.attack(pos) == false
            @remaining_misses -= 1
        end
        @board.print
        p @remaining_misses
    end















end