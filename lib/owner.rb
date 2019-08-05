class Owner
  attr_reader :species, :name
  attr_accessor :cats, :dogs


 @@all = []

  def initialize(name)
    @name = name
    @cats = []
    @dogs = []
    @species = species
    @@all << self
  end
  
  
  def species
    @species = "human"
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end
  
end