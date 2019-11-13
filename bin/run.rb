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
    Cli.playlist_creation(min_tempo, max_tempo)
    title = gets.chomp
    Cli.playlist_creation



    restart = Cli.loop_method

end

