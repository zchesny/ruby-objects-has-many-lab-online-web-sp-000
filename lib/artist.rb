class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    Songs.all.select{|song| song.artist == artist}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def song_count
    Songs.all.count{|song| song.artist == artist}
  end
  
end
