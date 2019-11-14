require_relative '../config/environment'
require_relative '../lib/cli.rb'
require_relative '../lib/song.rb'
require_relative '../lib/playlist.rb'
Cli = Cli.new


restart = ""
until restart == "no" do

 
    Cli.greeting
    Cli.activity
    activity_input = gets.chomp
    title = gets.chomp
    Playlist.create_playlist(title, min_tempo, max_tempo)
    Song.get_songs_in_range(min, max)
    
    



    restart = Cli.loop_method

end

