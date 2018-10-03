class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    self.name = name 
    @@all << self
  end 
  
  def self.all 
    if self.artist 
      self.all
    else 
      return nil
    end
  end
end