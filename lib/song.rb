class Song < ActiveRecord::Base

    has_many :song_playlists
    has_many :playlists, through: :song_playlists


    

# METHODS TO RETRIEVE SONG RANGES

    def get_130_140_songs(tempo)
        where(tempo: 130...140)
    end

    def get_140_150_songs(tempo)
        where(tempo: 140...150)
    end

    def get_150_160_songs(tempo)
        where(tempo: 150...160)
    end

    def get_160_180_songs(tempo)
        where(tempo: 160...180)
    end

end

