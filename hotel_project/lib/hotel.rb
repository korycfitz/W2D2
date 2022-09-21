require_relative "room"
require 'byebug'

class Hotel
  def initialize(name, hash) #keys -> room names(str) #vals are coresponding capacities (numbers)
    @name = name #string
    @rooms = Hash.new #keys -> room names(str) #vals are Room instances with the specified capacities -> Room instance(capacity)
    hash.each do |k,v| #key val pairs are name of room and capacity
        # debugger
        @rooms[k] = Room.new(v) #can also set rooms to the hash keys instead of val #we want it to be a new instance of the Room class
        #getting capacity from original hashs values #therefore we can pass in Room.new(capacity) instead of v
    end

  end

  def name #dont mutate @name
    name_dup = @name.dup
    parts = name_dup.split 
    upcase = parts.map(&:capitalize)
    upcase.join(" ")

  end

end
#Class.new passes all of arguments to initialize method
#within initialize method we create all of those variables (ex. creating: name and rooms)
#iterating through the hash and populating a new hash that is being stored @rooms instance variable 
#create a new hotel class and play around with making new instances of it #line 11

###hotel = Hotel.new("hilbert's grand hotel", "Basement"=>4, "Attic"=>2, "Under the Stairs"=>1, "hi" => 71)
