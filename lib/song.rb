class Song

  attr_accessor :name, :genre, :artist #the "through" of the model. It will have both genre and artist.

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) #a new song is instantiated it gets associated to a genre and the given genre adds that song to its collection.
  end


end
