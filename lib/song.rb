require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count =0
  @@genres=[]
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists<<artist
  end
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end
  def self.artists
    @@artists.uniq
  end

  # Within the class method of self.artist_count, I created an instance variable artist_count ={ } to an empty hash. The empty hash will be the starting point for our hash and will be the key/value of the stored artists and the number of songs. Next @@artists ( references the stored artists in the array.) .each will iterate over each artist if an artist name is true it doesn’t match any name in the hash it will move on to the next line and add 1 to a new key, else if an artist name is false it match a name, it will skip the next line of code and go to the next and increment the value by 1 in the matching key. I then return artist_count to get the entire hash key/value.

  def self.genre_count
    g = @@genres
    g_count={}
    g.each do |genre|
      if !g_count[genre]
        g_count[genre]=1
      else
        g_count[genre]+=1
      end
    end
    g_count
  end
  
  def self.artist_count
    a = @@artists
    a_count ={}
    a.each do |artist|
      if !a_count[artist]
        a_count[artist]=1
      else
        a_count[artist]+=1
      end
    end
    a_count
  end

end
# s= Song.new("happier","marshmello","pop")
# f= Song.new("aub5rey plaza","nick","indiepop")
# l = Song.new("pushin p","gunna...","trap")
# l = Song.new(" p","gunna...","trap")
# l = Song.new("pushin","gunna...","trap")

#binding.pry