class Song

  attr_accessor :name, :artist

  @@songs = []

  def initialize(name)
    @name = name 
    song = self
    @@songs < song
  end



end
