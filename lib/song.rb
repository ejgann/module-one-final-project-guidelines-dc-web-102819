class Song < ActiveRecord::Base

    has_many :song_playlists
    has_many :playlists, through: :song_playlists

    def self.get_songs_in_range(min, max)
        Song.all.select do |song|
        song.tempo >= 130 && song.tempo <= 140
        end
    end
    

end

