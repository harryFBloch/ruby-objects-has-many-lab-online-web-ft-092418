class Author 
  attr_accessor :name, :posts 
  @@post_counter = 0
  
  def initialize(name)
    self.name = name
    self.posts = []
  end
  
  def add_post(post)
    post.author = self
    self.posts << post
    @@post_counter += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end
  
  def self.post_count
    @@post_counter
  end
end