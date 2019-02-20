class Song
attr_accessor :genres :artists :name
@@count = 0
@@genres = []
@@artists = []

  def initialize(name, artist, genre)

    @@artists << artist
    @@genres << genre
    @@number_of_songs += 1
  end

  def self.count
    @@number_of_songs
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



end
