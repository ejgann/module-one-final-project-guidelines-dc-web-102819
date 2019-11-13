require_relative '../config/environment'
require_relative '../lib/cli.rb'
require_relative '../lib/song.rb'
cli = Cli.new


restart = ""
until restart == "no" do

    cli.greeting
    song.activity
    activity_input = gets.chomp
    cli.playlist_creation(min_tempo, max_tempo)
    title = gets.chomp



    restart = cli.loop_method

end

