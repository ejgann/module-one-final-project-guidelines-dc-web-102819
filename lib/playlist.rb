class Playlist < ActiveRecord::Base

    has_many :song_playlists
    has_many :songs, through: :song_playlists


    def self.create_playlist(title, min_tempo, max_tempo)
        playlist = Playlist.new(title: title, min_tempo: min_tempo, max_tempo: max_tempo)

        songs_in_range = Song.get_songs_in_range(min_tempo, max_tempo)

        playlist.songs = songs_in_range


    end


end