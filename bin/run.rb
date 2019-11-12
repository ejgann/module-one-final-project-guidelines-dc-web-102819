require_relative '../config/environment'
require_relative '../lib/cli.rb'
require_relative '../lib/song.rb'
cli = Cli.new


restart = ""
until restart == "no" do

    cli.greeting
    cli.activity
    activity_input = gets.chomp



    restart = cli.loop_method

end