class Pirate
    attr_accessor :name, :weight, :height 

    # def initialize(name, weight, height)
    #     @name = name 
    #     @weight = weight 
    #     @height = height 
    # end 

    PIRATES = []

    def initialize(params)
        @name = params[:name]
        @weight = params[:weight]
        @height = params[:height]
        PIRATES << self 
    end 

    def self.all 
        PIRATES
    end 

end