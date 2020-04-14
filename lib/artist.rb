class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def self.song_count
    artist_hash = {} 
    Song.all.each do |song| 
      artist_hash.include?(song.artist) ? artist_hash[song.artist] << song : artist_hash[song.artist] = [song]
    end 
    artist_hash
  end

end
