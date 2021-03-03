
class Artist 
    attr_accessor :name, :songs
    @@all = []
    
    def initialize(name)
        @name = name
        @songs = []
    end 

    def save 
        @@all << self
    end 

    def self.create(name)
        artist = Artist.new(name)
        artist.save
        artist
    end 

    def self.destroy_all 
        @@all.clear 
    end 

    def self.all
        @@all
    end 

    def songs 
        @songs
    end

    def add_song(song)
        if song.artist != self && !@songs.include?(song)
            #song.artist = self
            @songs << song
        end
    end 

    def genres
        genres = []
        songs.collect do |song|
            genres << song.genre
        end 
        genres.uniq
    end 
end 
