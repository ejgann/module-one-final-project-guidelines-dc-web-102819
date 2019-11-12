class CreateSongsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :tempo
      # t.integer :artist_id
      # t.integer :id 
      # these last two will be added if build out additional Artist class

    end
  end
end
