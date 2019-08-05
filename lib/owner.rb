class Owner
  attr_reader :species, :name
  attr_accessor :cats
 
 @@all = []


  def initialize(name)
    @cats = []
    @name = name
    @species = species
    @@all << self
  end
  
  def buy_cat(name)
  @cats << Cats.new(name)
  end
  
  def cats
    Cat.all.select do |cat| 
      cat.owner == self
    end
  end
  
   def dogs
    Dog.all.select do |dog| 
      dog.owner == self
    end
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