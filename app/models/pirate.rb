class Pirate
    attr_accessor :name, :weight, :height
    @@all = []

    def initialize(attr_hash={})
        @name = attr_hash[:name]
        @weight = attr_hash[:weight]
        @height = attr_hash[:height]
        @@all << self
    end

    def self.all
        @@all
    end
end