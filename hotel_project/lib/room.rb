class Room
    attr_reader :capacity, :occupants
    def initialize(capacity)
        @capacity = capacity   #int
        @occupants = []        #array
    end

    def full?
        if @occupants.length < @capacity
            return false
        end
        true
    end
    
    def available_space
        @capacity - @occupants.length
    end

    def add_occupant(name)
        if self.full?
            return false
        end

        if self.full? == false
            @occupants << name
            return true
        end
    end





end
