class Pirate

    attr_accessor :name, :weight, :height

    def initialize(arguments)
        @name = arguments[:name]
        @weight = arguments[:weight] 
        @height = arguments[:height] 
    end 

end