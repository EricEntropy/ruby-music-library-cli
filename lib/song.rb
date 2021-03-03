
class Song 
    attr_accessor :name, :genre
    attr_reader :artist
    @@all = []

    def initialize(name, artist = nil, genre = nil)
        @name = name 
        # if artist != nil && genre != nil
        #     self.artist=(artist)
        #     self.genre=(genre)            
        # else 
        #     @artist = artist
        #     @genre = genre
        # end 
        case artist 
        when nil 
            @artist = artist
        when artist
            self.artist=(artist)
        end 
        case genre 
        when nil 
            @genre = genre
        when genre 
            self.genre=(genre)
        end 
    end 

    def artist=(artist)
        @artist = artist
        artist.add_song(self)
    end 

    def genre=(genre)
        @genre = genre
        genre.add_song(self)
    end

    def save 
        @@all << self
    end 

    def self.create(name)
        song = Song.new(name)
        song.save
        song
    end 

    def self.destroy_all 
        @@all.clear 
    end 

    def self.all
        @@all
    end 

    def self.find_by_name(name)
    end
end 
