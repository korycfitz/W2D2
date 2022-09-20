class GuessingGame
    def initialize(min, max)   
        @min = min
        @max = max
        @secret_num = rand  #random num b/w min and max inclusive
        @num_attempts = 0
        @game_over = false  
    end

    def num_attempts
        @num_attempts = 0
    end

    def game_over?
        @game_over = false
    end

    def check_num(num)
        if num == secret_num
            @game_over == true
        end
    end





end
