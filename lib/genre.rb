class Genre 
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
        genre = Genre.new(name)
        genre.save
        genre
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
        if !@songs.include?(song)
            @songs << song
        end
    end

    def artists
        artists = []
        songs.collect do |song|
            artists << song.artist
        end 
        artists.uniq
    end 
end 
