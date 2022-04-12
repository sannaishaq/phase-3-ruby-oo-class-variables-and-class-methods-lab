class Song

    attr_accessor :name, :artist, :genre
    attr_reader :count

    def initialize(name , artist , genre) 
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
    end
    
    @@count = 0
    
    def self.count
        @@count
    end

    @@artists = []
    def self.artists
        self.filter do |artist| 
            if artist.name != self.name
            self.artists << artist
            end
        end
    end
    
    @@genres = []
    def self.genres
        @@genres
    end

    def self.genre_count
        genre_count = {}
        self.genres << genre_count
        self.count << genre_count    
    end
end