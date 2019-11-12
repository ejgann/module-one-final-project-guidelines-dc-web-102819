require_relative '../config/environment'
require_relative '../lib/cli.rb'
require_relative '../lib/song.rb'
cli = Cli.new



cli.greeting
cli.activity
activity_input = gets.chomp
