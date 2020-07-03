class Artist

  attr_accessor :name, :genres
  @@all = []

  def initialize(name)
    @name = name
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

  def new_song(name, genres)
    Song.new(name, self, genres)
  end

end
