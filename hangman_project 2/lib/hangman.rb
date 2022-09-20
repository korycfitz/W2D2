class Hangman
  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
    def self.random_word
      DICTIONARY.sample
      # DICTIONARY[rand(DICTIONARY.length - 1)] #also works but need to use Array#sample
    end
  
    def initialize
      @secret_word = Hangman.random_word #string #can't use self b/c self refers to instance
      @guess_word = Array.new(@secret_word.length, "_") #array
      @attempted_chars = []
      @remaining_incorrect_guesses = 5
    end

    def already_attempted?(char)
      return true if @attempted_chars.include?(char)
      false
    end
    
    def get_matching_indices(ele)
      arr = []
      @secret_word.each_char.with_index do |char, idx|
        if char == ele
          arr << idx
        end
      end
      arr
    end

    def fill_indices(char, arr)
      arr.each do |i|
        @guess_word[i] = char
      end
    end

    def try_guess(char)
      arr_matching_indices = get_matching_indices(char)
      if arr_matching_indices.empty?
        @remaining_incorrect_guesses -= 1
      end

      fill_indices(char, arr_matching_indices)

      if already_attempted?(char)
        print 'that has already been attempted'
        return false
      else
        @attempted_chars << char
        return true
      end
    end

    def ask_user_for_guess
      print 'Enter a char:'
      try_guess(gets.chomp)
    end

    def win?
      if @guess_word.join("") == @secret_word #cant compare string and array so need to join array or split string to compare
        print 'WIN'
        return true
      end
      
      false
    end

    def lose?
      if @remaining_incorrect_guesses == 0
        print 'LOSE'
        return true
      end

      false
    end

    def game_over?
      if win? || lose?
        print @secret_word
        return true
      end

      false
    end

end
