require 'pry'
class Ship

    attr_accessor :name, :type, :booty 

    @@all_ships = [] 

    def initialize(hash)
        @name = hash[:name] 
        @type = hash[:type] 
        @booty = hash[:booty]
        @@all_ships << self 
        
    end 

    def self.all 
        @@all_ships 
    end 

    def self.clear 
        @@all_ships.clear 
    end 

end