class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.uniq.each do |name|
      genre_hash[name] = 0
    end
    @@genres.each do |name|
      genre_hash[name] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.uniq.each do |name|
      artist_hash[name] = 0
    end
    @@artists.each do |name|
      artist_hash[name] += 1
    end
    artist_hash
  end

end
