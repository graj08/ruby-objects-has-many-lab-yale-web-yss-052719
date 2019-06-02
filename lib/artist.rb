require 'pry'

class Artist
    
    attr_accessor :name

    @@songs = []
    @@artists = []

    def initialize (name)
        @name = name
        @@artists << self
    end

    def add_song(song)
        song.artist = self
        self.songs << song
    end

    def add_song_by_name(name)
        song_1 = Song.new(name)
        add_song(song_1)
    end

    def songs
        @@songs
    end

    def self.all
        @@artists
    end

    def self.song_count
        @@songs.length
    end

end
