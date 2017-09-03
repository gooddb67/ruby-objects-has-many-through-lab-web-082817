class Artist

  attr_accessor :name #get and set a name for the artist

  def initialize(name) #give them a name and songs array right off the bat. They will have many songs
    @name = name
    @songs = []
  end

  def add_song(song) #this is the belongs-to part. Takes in a song object, adds it to the songs array, and then makes the artist attribute on the Song class equal to the current Artist
    @songs << song
    song.artist = self
  end

  def songs #makes the songs array available
    @songs
  end

  def genres #this is the has-many-through part. Go through the current Artists songs, collect the genre that has been added to each song and return an array of those genres. Can do this because Genre attributes have been added to song class. Gives them access. 
  self.songs.collect do |song|
    song.genre
  end
end





end
