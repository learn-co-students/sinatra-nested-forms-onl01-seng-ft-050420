class Ship
  attr_accessor :name, :type, :booty
  @@all = []
  
  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def self.clear
    @@all = []
  end
end