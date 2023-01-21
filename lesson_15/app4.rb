class Album
  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def show
    puts "Album '#{name}'."
    @songs.each_with_index { |v, i| puts "#{i + 1}. '#{v.name}' - duration '#{v.duration}'." }
  end
end

class Song
  attr_reader :name, :duration

  def initialize(name, duration)
    @name = name
    @duration = duration
  end
end

album = Album.new('Heritage')
song_1 = Song.new('Altitude 76', '3:03')
song_2 = Song.new('Song of desert', '3:37')
song_3 = Song.new('Black October', '3:47')

album.add_song(song_1)
album.add_song(song_2)
album.add_song(song_3)

album.show
