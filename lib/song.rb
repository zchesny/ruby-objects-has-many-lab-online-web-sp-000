class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = nil
    self.class.all << self
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist.name
  end

end
