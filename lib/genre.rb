class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song) #doesn't need to associate itself with the song going in. It is the instance of the genre.
    @songs << song
  end

  def artists
   @songs.collect do |song|
     song.artist
   end
 end







end
