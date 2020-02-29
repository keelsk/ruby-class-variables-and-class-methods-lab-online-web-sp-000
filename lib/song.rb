
class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  
  @@genres = []
  
  @@artists = []
  
  @@genre_count = {}
  
  @@artist_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@unique_genres = []
    @@genres.each do |genre|
      @@unique_genres << genre if !(@@unique_genres.include?(genre))
    end
    @@unique_genres
  end
  
  def self.artists
    @@unique_artists = []
    @@artists.each do |artist|
      @@unique_artists << artist if !(@@unique_artists.include?(artist))
    end
    @@unique_artists
  end
  
  def self.genre_count
    new_array = @@genres.collect do |genre|
      @@genres.include?(genre)
    end
    new_array
  end
  
end