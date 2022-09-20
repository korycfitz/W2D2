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

    



  



end
