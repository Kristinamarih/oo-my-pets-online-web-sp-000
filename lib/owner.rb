class Owner
  attr_reader :species 
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
    @@all << self 
    @species = species 
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def species 
    @species
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def pets 
    @pets
  end
  
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.collect do |pet, value|
      value.each do |pet|
      pet.mood = "nervous"
      end
      value.clear
    end
  end
  
  def list_pets
     "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end