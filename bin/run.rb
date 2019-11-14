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
    puts "\n"
    # Cli.playlist_name(min_tempo, max_tempo)
    Cli.playlist.create(title, min_tempo, max_tempo)
    
    # Cli.get_130_140_songs(tempo)
    



    restart = Cli.loop_method

end

