class Hangman

  # attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses

  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  # def self.random_word
  #   return DICTIONARY.sample
  # end

  # def initialize
  #   @secret_word = Hangman.random_word
  #   length = @secret_word.length
  #   @guess_word = Array.new(length, "_")
  #   @attempted_chars = Array.new
  #   @remaining_incorrect_guesses = 5
  # end

  # def already_attempted?(char)
  #   return true if @attempted_chars.include?(char)
  #   false
  # end

  # def get_matching_indices(single_char)
  #   arr = []
  #   @secret_word.each_char.with_index do |char, idx|
  #     if char == single_char
  #       arr << idx
  #     end
  #   end
  #   arr
  # end

  # def fill_indices(char, array)
  #   array.each do |num|
  #     @guess_word[num] = char
  #   end
  # end

  # #part2

  # def try_guess(char)
  #   if self.already_attempted?(char)
  #     p "that has already been attempted"
  #     return false
  #   else
  #     @attempted_chars << char
  #   end

  #   arr = self.get_matching_indices(char)
  #   self.fill_indices(char, arr)
  #   if arr.length == 0
  #     @remaining_incorrect_guesses -= 1
  #   end
  #   return true
  # end

  # def ask_user_for_guess
  #   p "Enter a char:"
  #   guess = gets.chomp
  #   self.try_guess(guess)
  # end

  # def win? 
  #   if @guess_word.join("") == @secret_word
  #     p "WIN"
  #     true
  #   else
  #     false
  #   end
  # end

  # def lose?
  #   if @remaining_incorrect_guesses == 0
  #     p "LOSE"
  #     true
  #   else
  #     false
  #   end
  # end

  # def game_over?
  #   if self.win? || self.lose?
  #     p @secret_word
  #     true
  #   else
  #     false
  #   end
  # end

    attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses


    DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

    def self.random_word
      DICTIONARY.sample
    end

    def initialize
      @secret_word = Hangman.random_word
      @guess_word = Array.new(@secret_word.length, '_')
      @attempted_chars = Array.new
      @remaining_incorrect_guesses = 5
    end

    def already_attempted?(char)
      if @attempted_chars.include?(char)
        return true
      end
      false
    end

    def get_matching_indices(sing_char)
      arr = []
      @secret_word.each_char.with_index do |char, idx|
        if char == sing_char
          arr << idx
        end
      end
      arr
    end

    def fill_indices(char, arr)
      arr.each do |idx|
        @guess_word[idx] = char
      end
    end

    #part2

    def try_guess(char)
      if self.already_attempted?(char) == true
        puts 'that has already been attempted'
        return false
      else
        @attempted_chars << char
      end

      indices = self.get_matching_indices(char)
      if indices == []
        @remaining_incorrect_guesses -= 1
      else
        self.fill_indices(char, indices)
      end
      true
    end

    def ask_user_for_guess
      puts 'Enter a char:'
      guess = gets.chomp
      self.try_guess(guess)
    end

    def win?
      if @guess_word.join("") == @secret_word
        puts "WIN"
        return true
      else
        return false
      end
    end

    def lose?
      if @remaining_incorrect_guesses == 0
        puts "LOSE"
        true
      else
        false
      end
    end

    def game_over?
      if self.win? || self.lose?
        p @secret_word
        true
      else
        false
      end
    end




end
