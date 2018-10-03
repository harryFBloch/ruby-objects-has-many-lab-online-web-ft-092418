require 'pry'
class Artist 
  attr_accessor :name, :songs
  @@song_counter = 0
  
  def initialize(name) 
    self.name = name
    self.songs = []
  end
  
  def add_song(song)
    song.artist = self
    self.songs << song
    @@song_counter += 1
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    self.add_song(song)
  end
  
  def self.song_count
    @@song_counter
  end
end