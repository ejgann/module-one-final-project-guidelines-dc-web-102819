class Song < ActiveRecord::Base

    has_many :song_playlists
    has_many :playlists, through: :song_playlists

    def self.get_songs_in_range(min, max)
        Song.all.select do |song|
        song.tempo >= min && song.tempo <= max
        end
    end
    

end

