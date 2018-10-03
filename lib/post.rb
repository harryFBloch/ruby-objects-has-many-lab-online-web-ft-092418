require 'pry'
class Post 
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    self.title = title
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def author_name
     if self.author.name.nil?
       self.author.name
     else
       return nil
     end
  end
  
end