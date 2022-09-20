class GuessingGame
    def initialize(min, max)   
        @min = min
        @max = max
        @secret_num = rand(min...max+1)  #random num b/w min and max inclusive
        @num_attempts = 0
        @game_over = false  
    end

    def num_attempts
        @num_attempts
    end

    def game_over?
        @game_over
    end

    def check_num(num)
        @num_attempts +=1
        @game_over
        if num == @secret_num
            @game_over = true
            print 'you win'
        end
        if num > @secret_num
            print 'too big'
        else
            print 'too small'
        end
    end

    def ask_user
        print 'enter a number'
        check_num(gets.chomp.to_i)
    end


            


end


