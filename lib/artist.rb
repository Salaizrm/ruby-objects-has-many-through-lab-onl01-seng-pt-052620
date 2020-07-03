class Artist

  attr_accessor :name, :genres
  @@all = []

  def initialize(name, genres)
    @name = name
    @genres = genres 
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

end
