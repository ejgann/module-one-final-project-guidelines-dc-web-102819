class CreatePlaylistsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :title
      t.integer :min_tempo
      t.integer :max_tempo
      # t.integer :id
# this last column to be added if build out Artist class
    end
  end
end
