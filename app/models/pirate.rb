require 'pry'
class Pirate

    attr_accessor :name, :weight, :height 

    @@all = [] 

    def initialize(hash)
        # @name = name 
        # @weight = weight 
        # @height = height

        @name = hash[:name]
        @weight = hash[:weight]
        @height = hash[:height]
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

end