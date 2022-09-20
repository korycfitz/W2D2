class Hangman
  attr_reader :guess_word, :attempted_chars, :remaining_incorrect_guesses
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
    def self.random_word
      DICTIONARY.sample
      # DICTIONARY[rand(DICTIONARY.length - 1)] #also works but need to use Array#sample
    end
  
    def initialize
      @secret_word = Hangman.random_word #can't use self b/c self refers to instance
      @guess_word = Array.new(@secret_word.length, "_")
      @attempted_chars = []
      @remaining_incorrect_guesses = 5
    end

    def already_attempted?(char)
    end
    

  



end
