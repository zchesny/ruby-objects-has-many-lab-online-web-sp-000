class Artist

  attr_accessor :name

  def initialize(name)
    @name = name

  end

  def songs
    Songs.all.select{|song| song.artist == artist}
  end

  def add_song

  end


end
