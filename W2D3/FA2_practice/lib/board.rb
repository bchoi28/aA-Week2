# class Board

    # attr_reader :max_height 

    # def self.build_stacks(num)
    #     Array.new(num) {Array.new}
    # end

    # # This Board#print method is given for free and does not need to be modified
    # # It is used to make your game playable.
    # def print
    #     @stacks.each { |stack| p stack }
    # end

    # def initialize(num, max_height)
    #     @max_height = max_height
    #     @stacks = Board.build_stacks(num)
    #     if num < 4 || max_height < 4
    #         raise "rows and cols must be >=4"
    #     end
    # end

    # def add(token, idx)
    #     if @stacks[idx].length < @max_height
    #         @stacks[idx] << token
    #         return true
    #     elsif @stacks[idx].length == @max_height
    #         return false
    #     end
    # end

    # # def vertical_winner?(token)
    # #     @stacks.each do |stack|
    # #         if stack.all?(token) && stack.length == @max_height
    # #             return true
    # #         end
    # #     end
    # #     return false
    # # end

    # # def horizontal_winner?(token)
    # #     arr = []
    # #     (0...@max_height).each do |idx| #idx = 1
    # #         @stacks.each do |stack|
    # #             arr << stack[idx]
    # #         end
    # #         #arr = [b, b, b, b, b, b ,b]
    # #         return true if arr.all?(token)
    # #         arr = []
    # #     end
    # #     return false
    # # end

    # # # count = 0
    # # # (0...@max_height).each do |i|
    # # #     @stacks.each do |stack|
    # # #         count += 1 if stack[i] == token
    # # #     end
    # # #     return true if count == @stacks.length
    # # #     count = 0
    # # # end
    # # # false

    # # def winner?(token)
    # #     horizontal_winner?(token) || vertical_winner?(token)
    # # end

    # attr_reader :max_height

    # def Board.build_stacks(num_stacks)
    #     Array.new(num_stacks) {Array.new}
    # end

    # # This Board#print method is given for free and does not need to be modified
    # # It is used to make your game playable.
    # def print
    #     @stacks.each { |stack| p stack }
    # end


    # def initialize(num_stacks, max_height)
    #     @max_height = max_height
    #     @stacks = Board.build_stacks(num_stacks)
    #     if num_stacks < 4 || max_height < 4
    #         raise 'rows and cols must be >= 4'
    #     end
    # end


    # def add(token, stack_idx)
    #     if @stacks[stack_idx].length < @max_height
    #         @stacks[stack_idx] << token
    #         return true
    #     elsif @stacks[stack_idx].length == @max_height
    #         return false
    #     end
    # end

    # def vertical_winner?(token)
    #     @stacks.any?{|stack| stack.all?(token) && stack.length == @max_height }
    # end

    # def horizontal_winner?(token)
    #     arr = []
    #     (0...@max_height).each do |idx|
    #         @stacks.each do |stack|
    #             arr << stack[idx]
    #         end
    #         if arr.all?(token) && arr.length == @stacks.length
    #             return true
    #         end
    #         arr = []
    #     end
    #     false
    # end

    # def winner?(token)
    #     horizontal_winner?(token) || vertical_winner?(token)
    # end


# end


class Board

    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @stacks.each { |stack| p stack }
    end

    def Board.build_stacks(num_stacks)
        Array.new(num_stacks) {Array.new}
    end

    def initialize(num_stacks, max_height)
        @max_height = max_height
        @stacks = Board.build_stacks(num_stacks)
        raise 'rows and cols must be >= 4' if num_stacks < 4 || max_height < 4
    end

    def max_height
        @max_height
    end

    def add(token, stack_idx)
        if @stacks[stack_idx].length < @max_height
            @stacks[stack_idx] << token
            return true
        else
            return false
        end
    end

    def vertical_winner?(token)
        @stacks.any?{|stack|stack.all?(token) && stack.length == @max_height}
    end

    def horizontal_winner?(token)
        arr = []

        (0...@max_height).each do |idx1|
            @stacks.each do |stack|
                arr << stack[idx1]
            end
            if arr.all?(token) && arr.length == @stacks.length
                return true
            end
            arr = []
        end
        return false
    end

    def winner?(token)
        vertical_winner?(token) || horizontal_winner?(token)
    end












end











