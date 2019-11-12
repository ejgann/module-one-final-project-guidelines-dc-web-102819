class CreateSongPlaylistsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :song_playlists do |t|
      t.integer :song_id
      t.integer :playlist_id
      # t.integer :id 
# this last column will be added if build out additional Artist table
    end
  end
end
